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
      backgroundColor: Colors.grey[500],
      body: SafeArea(
        child: Column(
          children: [
            // SizedBox(
            //   height: MediaQuery.of(context).size.height*0.05
            // ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Stack(
                //alignment: Alignment.topCenter,
                children: [

                  Container(
                    width: MediaQuery.of(context).size.width*1.0,
                    height:250,
                    margin: EdgeInsets.only(top: 90.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30)
                      ),                                                    
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
                    child:Column(
                      children: [
                        SizedBox(height: 90,),
                        Text(
                          'fbcbvcncvnvbnvbn',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                      
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      child: CircleAvatar(
                        radius:82,
                        backgroundColor: Colors.black,
                        child: CircleAvatar(
                          radius:80,
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  

        
                ]
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.01
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