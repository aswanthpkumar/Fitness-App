import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/beginnerInnerThighToning/beginner_innert_thigh_toning.dart';
import 'package:demo_project/pages/homeScreen/yoga/beginnerInnerThighToning/bottom_leg_lift_left.dart';
import 'package:demo_project/pages/homeScreen/yoga/beginnerInnerThighToning/reclined_oblique_twist.dart';
import 'package:flutter/material.dart';

class BottomLegLiftRight extends StatelessWidget {
  const BottomLegLiftRight({super.key});

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
        heading: 'Bottom Leg Lift Right',
        para1: '',
        para2: '',
        pagecount: '4/8',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const ReclinedObliqueTwist();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const BottomLegLiftLeft();
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