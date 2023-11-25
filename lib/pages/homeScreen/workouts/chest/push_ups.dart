import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/chest/incline_push_ups.dart';
import 'package:demo_project/pages/homeScreen/workouts/chest/wide_arm_pushups.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class Pushups extends StatelessWidget {
  const Pushups({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        coverimage: powerjumps,
        heading: 'Push-Ups x8',
        para1: pushupschesttext1,
        para2: pushupschesttext2,
        pagecount: '3/8',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const WideArmPushups();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const InclinePushups();
              },
            ),
          );
        },
      ),
    );
  }
}
