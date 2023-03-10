import 'package:flutter/material.dart';
import 'package:music_application/pages/voting_page.dart';
import 'constants.dart';
import 'package:music_application/pages/home_page.dart';
import 'package:music_application/pages/sliding_up_home_page.dart';
import 'package:music_application/pages/sliding_up_voting_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: kChartColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.purpleAccent,
          secondary: Colors.white,
          background: Colors.purple,
        ),
          textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
      ),
      home: Pages(),
    );
  }
}

class Pages extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          SlideUpHomePage(),
          SlideUpVotingPage(),
        ],
      ),
    );
  }
}



