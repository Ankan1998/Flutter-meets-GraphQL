import 'package:fgql/screens/entry_screen.dart';
import 'package:fgql/themes.dart';
import 'package:fgql/widgets/graphql_main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() async {
  await initHiveForFlutter();
  runApp(
    MaterialApp(
      theme: ThemeData(
        primaryColor: MyTheme.kPrimaryColor,
        accentColor: MyTheme.kAccentColor,
        textTheme: GoogleFonts.merriweatherTextTheme(
          //Theme.of(context).textTheme,
        ),
        //primarySwatch: Colors.blue[400],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: GraphMain(),
    )
  );
}

