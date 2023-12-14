import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/abs.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/legraisex_14.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/mountainerclimberx12.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class HeelTouchx202 extends StatelessWidget {
  const HeelTouchx202({super.key});

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
        heading: 'Heel Touch x 20',
        para1: heeltouchx20_2text1,
        para2: '',
        pagecount: '11/16',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const LegRaisesx14();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const MountainClimberx12();
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
