import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/views/home_view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: TextTheme(
        headlineLarge: GoogleFonts.roboto(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
        ),
        headlineMedium: GoogleFonts.roboto(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
        ),
      )),
      home: const HomeView(),
    );
  }
}
