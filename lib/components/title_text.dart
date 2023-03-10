import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {

  TitleText({required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 15,
        top: 12,
      ),
      alignment: Alignment.bottomLeft,
      child: Text(
        title,
        style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat'
        ),
      ),
    );
  }
}