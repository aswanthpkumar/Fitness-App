import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/arm_counterclockwise.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/chest_press_pluse.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class DiamondPushups extends StatelessWidget {
  const DiamondPushups({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        coverimage: powerjumps,
        heading: 'Diamond Pushups x6',
        para1: diamondpushupsx6text1,
        para2: '',
        pagecount: '6/13',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const ChestPressPluse();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const ArmCriclesCounterclockwise();
              },
            ),
          );
        },
      ),
    );
  }
}
