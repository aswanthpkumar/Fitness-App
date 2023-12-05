import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/diamond_pushups.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/leg_barbell_left.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class ChestPressPluse extends StatelessWidget {
  const ChestPressPluse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        coverimage: powerjumps,
        heading: 'Chest Press Pulse 16s',
        para1: chestpresspulsetext1,
        para2: '',
        pagecount: '7/13',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const LegBarbellCurlLeft();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const DiamondPushups();
              },
            ),
          );
        },
      ),
    );
  }
}
