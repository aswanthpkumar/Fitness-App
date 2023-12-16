import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/beginnerInnerThighToning/beginner_innert_thigh_toning.dart';
import 'package:demo_project/pages/homeScreen/yoga/beginnerInnerThighToning/reclined_oblique_twist.dart';
import 'package:demo_project/pages/homeScreen/yoga/beginnerInnerThighToning/right_leg_lateral_raise.dart';
import 'package:flutter/material.dart';

class SumoSquat extends StatelessWidget {
  const SumoSquat({super.key});

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
        heading: 'Sumo Squat',
        para1: '',
        para2: '',
        pagecount: '6/8',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const RightLegLateralRaise();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const ReclinedObliqueTwist();
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