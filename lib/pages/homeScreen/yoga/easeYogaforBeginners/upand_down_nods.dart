import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/easeYogaforBeginners/ease_yoga_for_beignners.dart';
import 'package:demo_project/pages/homeScreen/yoga/easeYogaforBeginners/seated_spinal_twist_left.dart';
import 'package:demo_project/pages/homeScreen/yoga/easeYogaforBeginners/side_to_side_turns.dart';
import 'package:flutter/material.dart';

class UpandDownNods extends StatelessWidget {
  const UpandDownNods({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        ontap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const EaseYogaforBeginners();
              },
            ),
          );
        },
        coverimage: powerjumps,
        heading: 'UP and Down Nods',
        para1: upanddownnodstext1,
        para2: '',
        pagecount: '4/11',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const SeatedSpinalTwistLeft();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const SidetosideTurns();
              },
            ),
          );
        },
        ontapClose: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const EaseYogaforBeginners();
              },
            ),
          );
        },
      ),
    );
  }
}
