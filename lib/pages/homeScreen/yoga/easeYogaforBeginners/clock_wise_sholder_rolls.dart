import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/easeYogaforBeginners/counter_clockwise_sholder_rolls.dart';
import 'package:demo_project/pages/homeScreen/yoga/easeYogaforBeginners/ease_yoga_for_beignners.dart';
import 'package:flutter/material.dart';

class ClcockwiseSholderRolls extends StatelessWidget {
  const ClcockwiseSholderRolls({super.key});

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
        heading: 'Clockwise Sholder Rolls',
        para1: clockwiseshoulderrollstext1,
        para2: '',
        pagecount: '1/11',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const CounterclockwiseSholderRolls();
              },
            ),
          );
        },
        ontapPrevious: () {},
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
