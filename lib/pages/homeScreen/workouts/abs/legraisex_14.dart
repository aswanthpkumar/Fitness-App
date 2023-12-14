import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/abs.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/healstouchx20_2.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/plank_30.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class LegRaisesx14 extends StatelessWidget {
  const LegRaisesx14({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        ontap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Abs();
              },
            ),
          );
        },
        coverimage: powerjumps,
        heading: 'Leg Raises x 14',
        para1: legraisesx14text1,
        para2: legraisesx14text2,
        pagecount: '12/16',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Plank30();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const HeelTouchx202();
              },
            ),
          );
        },
        ontapClose: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Abs();
              },
            ),
          );
        },
      ),
    );
  }
}
