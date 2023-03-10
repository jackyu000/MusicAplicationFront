import 'package:flutter/material.dart';
import 'package:music_application/constants.dart';
import 'package:music_application/components/song_button.dart';
import 'package:music_application/pages/voting_page.dart';
import 'package:music_application/services/song.dart';
import 'package:music_application/components/title_text.dart';
import 'package:music_application/pages/home_page.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:music_application/components/panel_widget.dart';

class SlideUpVotingPage extends StatefulWidget {

  State<SlideUpVotingPage> createState() => _SlideUpVotingPageState();
}

class _SlideUpVotingPageState extends State<SlideUpVotingPage> {
  @override
  Widget build(BuildContext context) {
    final panelHeightClosed = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SlidingUpPanel(
        color: kSongChartColor,
        parallaxEnabled: true,
        parallaxOffset: 0.7,
        borderRadius: BorderRadius.vertical(top: Radius.circular(18)),
        maxHeight: panelHeightClosed * 0.95,
        minHeight: panelHeightClosed * 0.5,
        body: VotingPage(),
        panelBuilder: (controller) => PanelWidget(
          controller: controller,
          songList: MoodSlideUpPanel(),
          title: 'My Picks',
        ),
      ),
    );
  }
}
