

import 'package:flutter/cupertino.dart';
import 'package:music_application/constants.dart';

Widget buildDragHandle() =>
    Center(
  child: Container(
    width: 30,
    height: 5,
    decoration: BoxDecoration(
      color: kChartColor,
      borderRadius: BorderRadius.circular(12),
    ),
  ),
);