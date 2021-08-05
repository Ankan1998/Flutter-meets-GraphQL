import 'package:fgql/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  //const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   backgroundColor: Colors.grey[900],
      //   title: Text(
      //     'Gitty',
      //     style: TextStyle(
      //       fontSize: 32,
      //       fontWeight: FontWeight.w300,
      //       letterSpacing: 4,
      //       fontFamily: GoogleFonts.pacifico().fontFamily
      //     ),
      //   ),
      //   elevation: 0,
      // ),
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height*0.05
            ),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(36.0),
                  child: Container(
                    width: 400,
                    height:300,
                    decoration: BoxDecoration(
                                
                      
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
                      )
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Hello Gradient!',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top:15,
                  left:15,
                  child: CircleAvatar(
                    radius:55,
                    backgroundColor: Colors.red[900],
                  ),
                ),

              ]
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.05
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )
                ),
                child: Container()
              ),
            ),
          ],
        ),
      ),
        
      
    );
  }
}