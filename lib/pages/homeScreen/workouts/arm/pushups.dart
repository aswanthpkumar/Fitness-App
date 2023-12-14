import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/arm.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/inchworms.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/punches.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class Pushups extends StatelessWidget {
  const Pushups({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        ontap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Arm();
              },
            ),
          );
        },
        coverimage: powerjumps,
        heading: 'Pushups x10',
        para1: pushupsx10text1,
        para2: '',
        pagecount: '12/13',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Inchworms();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Punches();
              },
            ),
          );
        },
        ontapClose: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Arm();
              },
            ),
          );
        },
      ),
    );
  }
}
