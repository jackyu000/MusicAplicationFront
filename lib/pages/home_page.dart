import 'package:flutter/material.dart';
import 'package:music_application/constants.dart';
import 'package:music_application/components/song_button.dart';
import 'package:music_application/services/song.dart';
import 'package:music_application/components/title_text.dart';

class HomePage extends StatefulWidget {

  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 67.0,
          ),
          Expanded(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: TextField(
                      onChanged: (value){
                        print(value);
                      },
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration:kTextFieldInputDecoration,
                    ),
                  ),
                  TitleText(title: 'Now Playing',),
                  Container(
                    height: 200,
                    width: 200,
                    margin: EdgeInsets.all(20.00),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.network(
                        'https://i.scdn.co/image/ab67616d0000b273dea510881ec1e506485303e4',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              )),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: kSongChartColor),
              child: Column(
                children: [

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


