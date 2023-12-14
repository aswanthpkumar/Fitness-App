import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/chest/chest.dart';
import 'package:demo_project/pages/homeScreen/workouts/chest/push_ups.dart';
import 'package:demo_project/pages/homeScreen/workouts/chest/triceps_dips.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class WideArmPushups extends StatelessWidget {
  const WideArmPushups({super.key});

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
        heading: 'Wide arm Push-Ups x8',
        para1: widearmpushupstext1,
        para2: widearmpushupstext2,
        pagecount: '4/8',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const TricepsDips();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Pushups();
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
