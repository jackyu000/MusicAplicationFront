import 'package:flutter/material.dart';
import 'package:music_application/constants.dart';
import 'package:music_application/components/song_button.dart';
import 'package:music_application/services/song.dart';
import 'package:music_application/components/title_text.dart';
import 'package:music_application/pages/home_page.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:music_application/components/panel_widget.dart';

class SlideUpHomePage extends StatefulWidget {

  @override
  State<SlideUpHomePage> createState() => _SlideUpHomePageState();
}

class _SlideUpHomePageState extends State<SlideUpHomePage> {
  @override
  Widget build(BuildContext context) {
    final panelHeightClosed = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SlidingUpPanel(
        color: kSongChartColor,
        parallaxEnabled: true,
        parallaxOffset: 0.07,
        borderRadius: BorderRadius.vertical(top: Radius.circular(18)),
        maxHeight: panelHeightClosed * 0.86,
        minHeight: panelHeightClosed * 0.4,
        body: HomePage(),
        panelBuilder: (controller) => PanelWidget(
          controller: controller,
          songList: MoodSlideUpPanel(),
          title: 'The Mood',
        ),
      ),
    );
  }
}
