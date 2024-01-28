import 'package:clubhouse/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'clubHouse UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme:const  AppBarTheme(backgroundColor: Color(0xFFF2F0E4)
        ),
        scaffoldBackgroundColor:const Color(0xFFF2F0E4),
        primaryColor: Colors.white,
        hintColor: const Color(0xFF27AE61),
        iconTheme:const IconThemeData(color: Colors.black),
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      home:const HomeScreen(
      ),

    );
  }
}

