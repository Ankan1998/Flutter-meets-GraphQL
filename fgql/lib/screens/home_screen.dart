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
          bio
          url
          email
          login
          repositories(first: 100) {
            edges {
              node {
                name
                description
                stargazerCount
                forkCount
              }
            }
            totalCount
          }
          followers(first: 100) {
            edges {
              node {
                avatarUrl(size: 200)
                name
                bio
                followers {
                  totalCount
                }
                following {
                  totalCount
                }
                repositories {
                  totalCount
                }
              }
            }
            totalCount
          }
          following(first: 100) {
            edges {
              node {
                avatarUrl(size: 200)
                name
                bio
                followers {
                  totalCount
                }
                following {
                  totalCount
                }
                repositories {
                  totalCount
                }
              }
            }
            totalCount
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
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            //color: Colors.white,
                            // border: Border(
                            //   top: BorderSide(color: Colors.white,width: 7),
                            //   left: BorderSide(color: Colors.white,width: 7),
                            //   right: BorderSide(color: Colors.white,width: 7),
                            // ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              stops: [
                                0.1,
                                0.4,
                                0.9,
                              ],
                              colors: [
                                Colors.green[700].withOpacity(0.4),
                                Colors.lightGreen[500].withOpacity(0.3),
                                Colors.lime[400].withOpacity(0.6),
                              ],
                            )),
                        child: SizedBox(
                            child: Center(child: Text(userDetail['bio'])))),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
