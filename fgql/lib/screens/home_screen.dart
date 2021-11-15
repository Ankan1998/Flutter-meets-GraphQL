import 'package:fgql/components/graphql_queries.dart';
import 'package:fgql/themes.dart';
import 'package:fgql/widgets/user_activity.dart';
import 'package:fgql/widgets/user_bio.dart';
import 'package:fgql/widgets/user_detail.dart';
import 'package:fgql/widgets/user_repo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class HomeScreen extends StatefulWidget {
  //const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Query(
          options: QueryOptions(document: gql(GraphqlQueries.getDetails())),
          builder: (QueryResult result,
              {VoidCallback refetch, FetchMore fetchMore}) {

            // if (result.hasException) {
            //   return Center(
            //       child: Text(
            //     result.hasException.toString(),
            //     style: TextStyle(fontSize: 16),
            //     textAlign: TextAlign.center,
            //   ));
            // }
            if (result.isLoading) {
              return Center(child: CircularProgressIndicator());
            }
            print(result);
            final userDetail = result.data['user'];
            
            final repoList = result.data['user']['repositories']['edges'];
            final followerList = result.data['user']['followers']['edges'];
            final followingList = result.data['user']['following']['edges'];

            return SafeArea(
              child: Column(
                children: [
                  UserDetail(u_detail: userDetail),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  UserActivity(
                      u_activity: userDetail,
                      repol: repoList,
                      followerlist: followerList,
                      followinglist: followingList),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  
                  UserBio(bio: userDetail['bio'])
                ],
              ),
            );
          }),
    );
  }
}
