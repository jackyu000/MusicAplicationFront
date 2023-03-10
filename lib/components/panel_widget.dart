import 'package:flutter/material.dart';
import 'package:music_application/constants.dart';
import 'package:music_application/components/song_button.dart';
import 'package:music_application/services/song.dart';
import 'package:music_application/components/title_text.dart';
import 'package:music_application/pages/home_page.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:music_application/components/drag_handle.dart';

class PanelWidget extends StatelessWidget {
  final Widget songList;
  final ScrollController controller;
  final String title;

  const PanelWidget({Key? key, required this.controller, required this.songList, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      controller: controller,
      children: <Widget>[
        SizedBox(height: 12),
        buildDragHandle(),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
            child: TitleText(
                title: this.title
            ),
        ),
        this.songList,
      ],
    );
  }
}


class MoodSlideUpPanel extends StatelessWidget {

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SongButton(
            song: Song(
                url:
                'https://i.scdn.co/image/ab67616d0000b27309dddea4db9de5964c668c96',
                name: 'Waka Waka',
                artist: 'Shakira'),
            icon: '',
            color: kChartColor,
          ),
          SongButton(
            song: Song(
                url:
                'https://i.scdn.co/image/ab67616d00001e0213e54d6687e65678d60466c2',
                name: 'Superhero (Heroes & Villains)',
                artist: 'Metro Boomin'),
            icon: '',
            color: kChartColor,
          ),
          SongButton(
            song: Song(
                url:
                'https://i.scdn.co/image/ab67616d0000b2739cd828e243b08cb70b15d047',
                name: 'City of Gods',
                artist: 'Kanye West'),
            icon: '',
            color: kChartColor,
          ),
          SongButton(
            song: Song(
                url:
                'https://i.scdn.co/image/ab67616d0000b27309dddea4db9de5964c668c96',
                name: 'Waka Waka',
                artist: 'Shakira'),
            icon: '',
            color: kChartColor,
          ),
          SongButton(
            song: Song(
                url:
                'https://i.scdn.co/image/ab67616d00001e0213e54d6687e65678d60466c2',
                name: 'Superhero (Heroes & Villains)',
                artist: 'Metro Boomin'),
            icon: '️',
            color: kChartColor,
          ),
          SongButton(
            song: Song(
                url:
                'https://i.scdn.co/image/ab67616d0000b2739cd828e243b08cb70b15d047',
                name: 'City of Gods',
                artist: 'Kanye West'),
            icon: '',
            color: kChartColor,
          ),
          SongButton(
            song: Song(
                url:
                'https://i.scdn.co/image/ab67616d0000b27309dddea4db9de5964c668c96',
                name: 'Waka Waka',
                artist: 'Shakira'),
            icon: '',
            color: kChartColor,
          ),
          SongButton(
            song: Song(
                url:
                'https://i.scdn.co/image/ab67616d00001e0213e54d6687e65678d60466c2',
                name: 'Superhero (Heroes & Villains)',
                artist: 'Metro Boomin'),
            icon: '',
            color: kChartColor,
          ),
          SongButton(
            song: Song(
                url:
                'https://i.scdn.co/image/ab67616d0000b2739cd828e243b08cb70b15d047',
                name: 'City of Gods',
                artist: 'Kanye West'),
            icon: '',
            color: kChartColor,
          ),
          SongButton(
            song: Song(
                url:
                'https://i.scdn.co/image/ab67616d0000b27309dddea4db9de5964c668c96',
                name: 'Waka Waka',
                artist: 'Shakira'),
            icon: '',
            color: kChartColor,
          ),
          SongButton(
            song: Song(
                url:
                'https://i.scdn.co/image/ab67616d00001e0213e54d6687e65678d60466c2',
                name: 'Superhero (Heroes & Villains)',
                artist: 'Metro Boomin'),
            icon: '',
            color: kChartColor,
          ),
          SongButton(
            song: Song(
                url:
                'https://i.scdn.co/image/ab67616d0000b2739cd828e243b08cb70b15d047',
                name: 'City of Gods',
                artist: 'Kanye West'),
            icon: '',
            color: kChartColor,
          ),
        ],
      ),
    );
  }
}

