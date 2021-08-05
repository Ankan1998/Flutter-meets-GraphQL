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
      backgroundColor: Colors.deepPurple[100],
      body: SafeArea(
        child: Column(
          children: [
            
            Stack(
              //alignment: Alignment.topCenter,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*1.0,
                  height:300,
                  
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                      image: AssetImage('images/c.png'),
                      fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(120),
                      bottomRight: Radius.circular(120),

                    ),                                                    
                  ),
                  child:Container()                    
                ),
                Container(
                  width: MediaQuery.of(context).size.width*1.0,
                  height:300,
                  
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
                    )
                  ),
                  child:Container()
                    
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    
                    left: 20,
                    right: 20
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width*1.0,
                    height:250,
                    margin: EdgeInsets.only(top: 110.0),
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
                        Text(
                          '12423534543',
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
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SizedBox(
                      child: CircleAvatar(
                        radius:84,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius:80,
                          backgroundColor: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ]
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