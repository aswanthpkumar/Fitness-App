import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/leg/donkey_kicks_left.dart';
import 'package:demo_project/pages/homeScreen/workouts/leg/side_lying_right.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class BACKWARDlUNGE extends StatelessWidget {
  const BACKWARDlUNGE({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        coverimage: powerjumps,
        heading: 'Backward Lunge x14',
        para1: backwardlungetext1,
        para2: '',
        pagecount: '5/11',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const DonkeyKicksLeft();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const SideLyingLegLiftRight();
              },
            ),
          );
        },
      ),
    );
  }
}
