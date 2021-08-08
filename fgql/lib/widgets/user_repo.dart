import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        
        itemCount: widget.repo.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shadowColor: Colors.grey[900],
              child: ListTile(
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
                // trailing: Row(children: [

                // ],),
            
              ),
            ),
          );
        },
      ),
    );
  }
}
