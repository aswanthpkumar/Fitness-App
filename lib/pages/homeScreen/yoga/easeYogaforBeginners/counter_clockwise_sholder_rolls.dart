import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/easeYogaforBeginners/clock_wise_sholder_rolls.dart';
import 'package:demo_project/pages/homeScreen/yoga/easeYogaforBeginners/ease_yoga_for_beignners.dart';
import 'package:demo_project/pages/homeScreen/yoga/easeYogaforBeginners/side_to_side_turns.dart';
import 'package:flutter/material.dart';

class CounterclockwiseSholderRolls extends StatelessWidget {
  const CounterclockwiseSholderRolls({super.key});

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
        heading: 'Counterclockwise Sholder Rolls',
        para1: counterclockwiseshoulderrollstext1,
        para2: '',
        pagecount: '2/11',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const SidetosideTurns();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const ClcockwiseSholderRolls();
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
