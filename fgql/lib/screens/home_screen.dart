import 'package:fgql/themes.dart';
import 'package:fgql/widgets/user_activity.dart';
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
  String readRepositories = """
       query Flutter_Github_GraphQL{
            user(login: "Ankan1998") {
                avatarUrl(size: 200)
                location
                name
                url
                email
                login
                repositories {
                  totalCount
                }
                followers {
                  totalCount
                }
                following {
                  totalCount
                }
              }
      viewer {
              repositories(first: 100) {
                edges {
                  node {        
                    name
                    description
                    stargazerCount
                    forkCount      
                  }
                }
              }
            }
          }
      """;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Query(
          options: QueryOptions(document: gql(readRepositories)),
          builder: (QueryResult result,
              {VoidCallback refetch, FetchMore fetchMore}) {
            count = count + 1;
            print(count);
            print(result.data);
            //print("ckbjmlckb");
            //print(result.data['user']);
            print(result.hasException);
            //print(result.hasException);
            if (result.hasException) {
              return Center(
                  child: Text(
                result.hasException.toString(),
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ));
            }
            if (result.isLoading) {
              return Center(child: CircularProgressIndicator());
            }
            final userDetail = result.data['user'];
            final repoList = result.data['viewer']['repositories']['edges'];
            //print("dgjkfsdg");
            //print("yo yo ${userDetail['avatarUrl']}");
            return SafeArea(
              child: Column(
                children: [
                  UserDetail(u_detail: userDetail),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  UserActivity(u_activity: userDetail),
                  //UserDetail(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          )),
                      child: UserRepo(repo: repoList,)
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
