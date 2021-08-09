import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserActivity extends StatefulWidget {

  const UserActivity({Key key, this.u_activity}) : super(key: key);
  final Map u_activity;

  
  @override
  _UserActivityState createState() => _UserActivityState();
}

class _UserActivityState extends State<UserActivity> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        width: MediaQuery.of(context).size.width * 1.0,
        height: MediaQuery.of(context).size.height * 0.12,
        //margin: EdgeInsets.only(top: 110.0),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white,width: 3),
            borderRadius: BorderRadius.all(Radius.circular(30)),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [
                0.1,
                0.3,
                0.7,
                0.9
              ],
              colors: [
                Colors.teal[200],
                Colors.blue[100],
                Colors.lime[300],
                Colors.green[200],
              ],
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "REPOSITORY",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                    fontFamily: GoogleFonts.ubuntu().fontFamily,
                    letterSpacing: 1
                  ),
                ),
                Text(
                  "${widget.u_activity['repositories']['totalCount']}",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown[600],
                    fontFamily: GoogleFonts.raleway().fontFamily,
                    letterSpacing: 1.5
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "FOLLOWERS",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                    fontFamily: GoogleFonts.ubuntu().fontFamily,
                    letterSpacing: 1
                  ),
                ),
                Text(
                  "${widget.u_activity['followers']['totalCount']}",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown[600],
                    fontFamily: GoogleFonts.raleway().fontFamily,
                    letterSpacing: 1.5
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "FOLLOWING",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                    fontFamily: GoogleFonts.ubuntu().fontFamily,
                    letterSpacing: 1
                  ),
                ),
                Text(
                  "${widget.u_activity['following']['totalCount']}",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown[600],
                    fontFamily: GoogleFonts.raleway().fontFamily,
                    letterSpacing: 1.5
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

