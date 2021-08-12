import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserBio extends StatefulWidget {
  const UserBio({Key key, this.bio}) : super(key: key);
  final String bio;

  @override
  _UserBioState createState() => _UserBioState();
}

class _UserBioState extends State<UserBio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:MediaQuery.of(context).size.height*0.3,
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            color: Colors.white,
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
                0.8,
              ],
              colors: [
                Colors.orange[700].withOpacity(0.5),
                Colors.red[700].withOpacity(0.5),
                Colors.deepPurple[400].withOpacity(0.6),
              ],
            )),
        child: Padding(
          padding: const EdgeInsets.only(top:15.0, left:10.0,right:10.0),
          child: ListView(
            
            children: [
              Center(
                child: Text(
                  "BIO",
                  style: TextStyle(
                  
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown[900],
                    fontFamily: GoogleFonts.playball().fontFamily,
                    letterSpacing: 4,
                    shadows: [
                      Shadow( // bottomLeft
                        offset: Offset(-1, -1),
                        color: Colors.grey[300]
                      ),
                      Shadow( // bottomRight
                        offset: Offset(1, -1),
                        color: Colors.grey[300]
                      ),
                      Shadow( // topRight
                        offset: Offset(1, 1),
                        color: Colors.grey[300]
                      ),
                      Shadow( // topLeft
                        offset: Offset(-1, 1),
                        color: Colors.white
                      ),
                    ]
                  ),
                ),
              ),
              SizedBox( height:10),
              Center(
                child: Text(
                  widget.bio,
                  style: TextStyle(
                  
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey[800],
                    fontFamily: GoogleFonts.delius().fontFamily,
                    letterSpacing: 1.3,
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
