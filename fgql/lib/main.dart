import 'dart:io';

import 'package:fgql/screens/entry_screen.dart';
import 'package:fgql/themes.dart';
import 'package:fgql/components/graphql_main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

void main() async {
  HttpOverrides.global = new MyHttpOverrides();
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

