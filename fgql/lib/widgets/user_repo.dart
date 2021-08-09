import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:koukicons/favourite2.dart';
import 'package:koukicons/flowChart.dart';


class UserRepo extends StatefulWidget {
  //const UserRepo({ Key? key }) : super(key: key);
  const UserRepo({Key key, this.repo}) : super(key: key);
  final List repo;

  @override
  _UserRepoState createState() => _UserRepoState();
}

class _UserRepoState extends State<UserRepo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("REPOSITORIES"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          
          itemCount: widget.repo.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                shadowColor: Colors.grey[900],
                child: ExpansionTile(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: widget.repo[index]['node']['description'] != null ? 
                      Text(
                        widget.repo[index]['node']['description'],
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
                  title: Text(
                    widget.repo[index]['node']['name'],
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown[600],
                      fontFamily: GoogleFonts.courgette().fontFamily,
                      letterSpacing: 1.3
                    )
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(top:10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                          KoukiconsFavourite2(height: 25,width: 25,),
                          SizedBox(height:3),
                          Text("${widget.repo[index]['node']['stargazerCount']}")
                        ],),
                        SizedBox(width:5),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                          KoukiconsFlowChart(height: 25,width: 25,),
                          SizedBox(height:3),
                          Text("${widget.repo[index]['node']['forkCount']}")
                        ],),
                      ],
                    ),
                  ),
              
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
