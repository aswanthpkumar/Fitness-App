import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/beginnerInnerThighToning/beginner_innert_thigh_toning.dart';
import 'package:demo_project/pages/homeScreen/yoga/beginnerInnerThighToning/bottom_leg_lift_left.dart';
import 'package:demo_project/pages/homeScreen/yoga/beginnerInnerThighToning/quick_feet.dart';
import 'package:flutter/material.dart';

class ButtKicks extends StatelessWidget {
  const ButtKicks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        ontap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const BeginnerInnerThighToning();
              },
            ),
          );
        },
        coverimage: powerjumps,
        heading: 'Butt Kicks',
        para1: '',
        para2: '',
        pagecount: '2/8',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const BottomLegLiftLeft();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const QuickFeet();
              },
            ),
          );
        },
        ontapClose: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const BeginnerInnerThighToning();
              },
            ),
          );
        },
      ),
    );
  }
}