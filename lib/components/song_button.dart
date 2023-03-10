import 'package:flutter/material.dart';
import 'package:music_application/services/song.dart';
import 'package:music_application/utlities/hero_dialog_route.dart';
import 'package:music_application/constants.dart';

class SongButton extends StatelessWidget {

  SongButton({required this.song, required this.icon, required this.color});
  final Song song;
  final String icon;
  final Color color;

  @override
  Widget build(BuildContext context) {


    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(HeroDialogRoute(
          settings: RouteSettings(),
            builder: (context){
          return _AddTodoPopupCard(key: key,);
        }));
      },
      child: Hero(
        tag: 'add-todo-hero',
        child: Container(
          height: 100,
          child: Row(
            children: [
              Container(
                height: 83,
                width: 83,
                margin: EdgeInsets.all(7.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                      song.url,
                      fit: BoxFit.fill,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          song.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        song.artist,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                            fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w300
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    icon,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
          margin: EdgeInsets.all(3),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: color),
        ),
      ),
    );
  }
}



class _AddTodoPopupCard extends StatelessWidget {
  /// {@macro add_todo_popup_card}
 const _AddTodoPopupCard({required key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Hero(
          tag: 'add-todo-hero',
          child: Material(
            color: kChartColor,
            elevation: 2,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 100,
                      child: Row(
                        children: [
                          Container(
                            height: 83,
                            width: 83,
                            margin: EdgeInsets.all(7.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                'https://i.scdn.co/image/ab67616d00001e0213e54d6687e65678d60466c2',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      'Superhero (Heroes & Villains)',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Montserrat'
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Metro Boomin',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w300
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: kChartColor),
                    ),
                    const Divider(
                      color: Colors.white,
                      thickness: 0.2,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                          'Add',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w300
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}