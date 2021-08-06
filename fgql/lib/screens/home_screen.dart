import 'package:fgql/themes.dart';
import 'package:fgql/widgets/user_detail.dart';
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
              starredRepositories(last: 12) {
                edges {
                  node {
                    id
                    name
                    nameWithOwner
                  }
                }
              }
            }
          }
      """;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Query(
          options: QueryOptions(document: gql(readRepositories)),
          builder: (QueryResult result,
              {VoidCallback refetch, FetchMore fetchMore}) {
            //print("ckbjmlckb");
            //print(result.data['user']);
            //print(result.hasException); 
            //print(result.hasException);
            // if (result.hasException != null) {
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
            final userDetail = result.data['user'];
            //print("dgjkfsdg");
            //print("yo yo ${userDetail['avatarUrl']}");
            return SafeArea(
              child: Column(
                children: [
                  UserDetail(u_detail: userDetail),
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
                        child: Container()),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
