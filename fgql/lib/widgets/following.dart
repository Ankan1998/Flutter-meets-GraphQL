import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class UserFollowing extends StatefulWidget {
  //const UserRepo({ Key? key }) : super(key: key);
  const UserFollowing({Key key, this.following}) : super(key: key);
  final List following;

  @override
  _UserFollowingState createState() => _UserFollowingState();
}

class _UserFollowingState extends State<UserFollowing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FOLLOWING"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[200] ,
        elevation: 0,
      ),
      backgroundColor: Colors.deepPurple[200],
      body: Padding(
        padding: const EdgeInsets.only(left:8.0,right:8.0),
        child: Container(
          
          padding: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [
                0.1,
                0.4,
                0.8,
              ],
              colors: [
                Colors.lightBlue[300].withOpacity(0.3),
                Colors.indigo[300].withOpacity(0.4),
                Colors.deepPurple[400].withOpacity(0.5),
              ],
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )
          ),
          child: ListView.builder(
            
            itemCount: widget.following.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  child: Card(
                    color: Colors.grey[200],
                    shadowColor: Colors.grey[900],
                    child: ExpansionTile(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: widget.following[index]['node']['bio'] != null ? 
                          Text(
                            widget.following[index]['node']['bio'],
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[700],
                              fontFamily: GoogleFonts.lato().fontFamily,
                              letterSpacing: 1.3
                            )
                          )
                          : Text(
                            "NULL",
                          )
                          ),
                        )
                      ],
                      title: widget.following[index]['node']['name'] != null ? 
                      Text(
                        widget.following[index]['node']['name'],
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown[600],
                          fontFamily: GoogleFonts.courgette().fontFamily,
                          letterSpacing: 1.3
                        )
                      )
                      :
                      Text(
                        "No Name",
                      ),
                      leading: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: ClipOval(
                          //backgroundColor: Colors.grey[800],
                          child:widget.following[index]['node']['avatarUrl'] != null ?
                          Image.network(
                            widget.following[index]['node']['avatarUrl'],

                            fit: BoxFit.fill
                          )
                          :
                          Image.network(
                            "https://drgsearch.com/wp-content/uploads/2020/01/no-photo.png",

                            fit: BoxFit.fill
                          )

                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top:10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Followers: ${widget.following[index]['node']['followers']['totalCount']}"),
                            //SizedBox(width:5),
                            Text("Following: ${widget.following[index]['node']['following']['totalCount']}"),
                            
                            Text("Repository: ${widget.following[index]['node']['repositories']['totalCount']}"),
                            SizedBox(height: 5)
                          ],
                        ),
                      ),
                  
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
