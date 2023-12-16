import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/beginnerInnerThighToning/beginner_innert_thigh_toning.dart';
import 'package:demo_project/pages/homeScreen/yoga/beginnerInnerThighToning/right_leg_lateral_raise.dart';
import 'package:flutter/material.dart';

class LeftLegLateralRaise extends StatelessWidget {
  const LeftLegLateralRaise({super.key});

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
        heading: 'Left Leg Lateral Raise',
        para1: '',
        para2: '',
        pagecount: '8/8',
        ontapNext: () {},
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const RightLegLateralRaise();
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
