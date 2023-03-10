import 'package:flutter/material.dart';
import 'package:music_application/services/song.dart';
import 'package:music_application/components/song_button.dart';
import 'package:music_application/constants.dart';
import 'package:music_application/components/title_text.dart';

class VotingPage extends StatefulWidget {
  State<VotingPage> createState() => _VotingPageState();
}

class _VotingPageState extends State<VotingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50.0,
          ),
          Expanded(
              child: Column(
            children: [
              TitleText(title: 'On Deck'),
              SongButton(
                song: Song(
                    url:
                        'https://i.scdn.co/image/ab67616d0000b27309dddea4db9de5964c668c96',
                    name: 'Waka Waka',
                    artist: 'Shakira'),
                icon: '20',
                color: kChartColor,
              ),
              SongButton(
                song: Song(
                    url:
                        'https://i.scdn.co/image/ab67616d00001e0213e54d6687e65678d60466c2',
                    name: 'Superhero (Heroes & Villains)',
                    artist: 'Metro Boomin'),
                icon: '18',
                color: kChartColor,
              ),
              SongButton(
                song: Song(
                    url:
                        'https://i.scdn.co/image/ab67616d0000b2739cd828e243b08cb70b15d047',
                    name: 'City of Gods',
                    artist: 'Kanye West'),
                icon: '18',
                color: kChartColor,
              ),
            ],
          )),

        ],
      ),
    );
  }
}
