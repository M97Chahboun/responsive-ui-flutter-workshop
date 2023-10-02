import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_ui/welcome.dart';

void main() {
  runApp(const FlutterAirApp());
}

class FlutterAirApp extends StatelessWidget {
  const FlutterAirApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            textTheme: GoogleFonts.redHatDisplayTextTheme(
                Theme.of(context).textTheme)),
        home: const FlutterAirWelcome());
  }
}