import 'package:flutter/material.dart';

class UserBio extends StatefulWidget {
  const UserBio({Key key, this.bio}) : super(key: key);
  final String bio;

  @override
  _UserBioState createState() => _UserBioState();
}

class _UserBioState extends State<UserBio> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
              child: Center(
                  child: Text(widget.bio,
          )))),
    );
  }
}
