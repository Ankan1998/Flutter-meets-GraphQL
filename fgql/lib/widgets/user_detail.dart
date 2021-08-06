import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserDetail extends StatefulWidget {
  const UserDetail({Key key, this.u_detail}) : super(key: key);
  final Map u_detail;

  @override
  _UserDetailState createState() => _UserDetailState();
}

class _UserDetailState extends State<UserDetail> {
  @override
  Widget build(BuildContext context) {
    print(widget.u_detail);
    return Stack(
        //alignment: Alignment.topCenter,
        children: [
          Container(
              width: MediaQuery.of(context).size.width * 1.0,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                    image: AssetImage('images/c.png'), fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(120),
                  bottomRight: Radius.circular(120),
                ),
              ),
              child: Container()),
          Container(
              width: MediaQuery.of(context).size.width * 1.0,
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(120),
                    bottomRight: Radius.circular(120),
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
                      Colors.blueGrey[700].withOpacity(0.5),
                      Colors.red[700].withOpacity(0.3),
                      Colors.deepPurple[900].withOpacity(0.6),
                    ],
                  )),
              child: Container()),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              width: MediaQuery.of(context).size.width * 1.0,
              //height: 250,
              margin: EdgeInsets.only(top: 110.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: [
                      0.1,
                      0.3,
                      0.8,
                    ],
                    colors: [
                      Colors.yellow,
                      Colors.orange[300],
                      Colors.red[300],
                    ],
                  )),
              child: Column(
                children: [
                  SizedBox(
                    height: 90,
                  ),
                  Text(
                    "Name: ${widget.u_detail['name']}",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                      fontFamily: GoogleFonts.poppins().fontFamily
                    ),
                  ),
                  Text(
                    "ID: ${widget.u_detail['login']}",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown[600],
                      fontFamily: GoogleFonts.raleway().fontFamily,
                      letterSpacing: 1.5
                    ),
                  ),
                  Text(
                    "Location: ${widget.u_detail['location']}",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown[600],
                      fontFamily: GoogleFonts.raleway().fontFamily,
                      letterSpacing: 1.5
                    ),
                  ),
                  Text(
                    "Email: ${widget.u_detail['email']}",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown[600],
                      fontFamily: GoogleFonts.raleway().fontFamily,
                      letterSpacing: 1.5
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Center(
                      child: Text(
                        "${widget.u_detail['url']}",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.cyan[900],
                          fontFamily: GoogleFonts.quicksand().fontFamily,
                          letterSpacing: 1.3
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height:30)
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: SizedBox(
                child: CircleAvatar(
                  radius: 84,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                      radius: 80,
                      //backgroundColor: Colors.grey[800],
                      backgroundImage:
                          NetworkImage(widget.u_detail['avatarUrl'])),
                ),
              ),
            ),
          ),
        ]);
  }
}
