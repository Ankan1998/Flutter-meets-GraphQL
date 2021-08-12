import 'package:fgql/services/graphql_main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EntryScreen extends StatefulWidget {
  //const EntryScreen({ Key? key }) : super(key: key);

  @override
  _EntryScreenState createState() => _EntryScreenState();
}

class _EntryScreenState extends State<EntryScreen> {
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ClipOval(
              child: Image.asset(
                "images/git1.png",
                height: 180,
                width: 180,
              ),
            ),
          ),
          SizedBox(height:1.0),
          Text(
            'Gitty',
            style: TextStyle(
              fontFamily: GoogleFonts.pacifico().fontFamily,
              fontSize: 34,
              color: Colors.green[900],
              letterSpacing: 4,
            ),
          ),
          SizedBox(height:20.0),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.6,
              height: MediaQuery.of(context).size.height * 0.06,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 3), blurRadius: 10, color: Colors.grey)
                ],
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    controller: textEditingController,
                    decoration: InputDecoration.collapsed(
                        hintText: "Your Access Token....",
                        hintStyle: TextStyle(
                          color: Colors.grey[700],
                          fontFamily: GoogleFonts.satisfy().fontFamily,
                          letterSpacing: 2.0,
                          fontSize: 18.0,
                        ),
                        border: InputBorder.none),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height:25.0),
          IconButton(
            onPressed: () {
              //onSendMessage(textEditingController.text);
              // Navigator.pushReplacement(
              //   context, 
              //   MaterialPageRoute(
              //     builder: (BuildContext context) => GraphMain(access_token: textEditingController.text)
              //   )
              // );
            },
            icon: Icon(
              Icons.send_sharp,
              color: Colors.green[900], 
              size: 30.0)
          ),

        ],
      )
    );
  }
}