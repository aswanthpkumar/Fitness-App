import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/chest/chest.dart';
import 'package:demo_project/pages/homeScreen/workouts/chest/push_ups.dart';
import 'package:demo_project/pages/homeScreen/workouts/chest/jumping_jacks.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class InclinePushups extends StatelessWidget {
  const InclinePushups({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        ontap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Chest();
              },
            ),
          );
        },
        coverimage: powerjumps,
        heading: 'Incline Push-Ups x10',
        para1: inclinepushupstext1,
        para2: inclinepushupstext2,
        pagecount: '2/8',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Pushups();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const JumpingJacks();
              },
            ),
          );
        },
        ontapClose: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Chest();
              },
            ),
          );
        },
      ),
    );
  }
}
