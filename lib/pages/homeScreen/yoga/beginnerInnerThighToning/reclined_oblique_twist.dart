import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/beginnerInnerThighToning/beginner_innert_thigh_toning.dart';
import 'package:demo_project/pages/homeScreen/yoga/beginnerInnerThighToning/bottom_leg_lift_right.dart';
import 'package:demo_project/pages/homeScreen/yoga/beginnerInnerThighToning/sumo_squat.dart';
import 'package:flutter/material.dart';

class ReclinedObliqueTwist extends StatelessWidget {
  const ReclinedObliqueTwist({super.key});

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
        heading: 'Reclined Oblique Twist',
        para1: '',
        para2: '',
        pagecount: '5/8',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const SumoSquat();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const BottomLegLiftRight();
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