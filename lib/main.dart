import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/presentation/main_page/widgets/screen_main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
        primarySwatch: Colors.blue,
        backgroundColor: Colors.black,
        scaffoldBackgroundColor: backgrounndColor,
        fontFamily: GoogleFonts.montserrat().fontFamily,
       textTheme: const TextTheme(
         bodyText1: TextStyle(color: Colors.white),
         bodyText2: TextStyle(color: Colors.white)
       )
      ),
      home:  ScreenMainPage(),
    );
  }
}




