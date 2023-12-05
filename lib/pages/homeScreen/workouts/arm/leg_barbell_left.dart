import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/chest_press_pluse.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/leg_barbell_curl_left.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class LegBarbellCurlLeft extends StatelessWidget {
  const LegBarbellCurlLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        coverimage: powerjumps,
        heading: 'Leg Barbell Curl Left x8',
        para1: legbarellcurlefttext1,
        para2: '',
        pagecount: '8/13',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const LegBarbellCurlRight();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const ChestPressPluse();
              },
            ),
          );
        },
      ),
    );
  }
}
