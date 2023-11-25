import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/chest/chest_stretch.dart';
import 'package:demo_project/pages/homeScreen/workouts/chest/knee_pushups.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class CobraStretch extends StatelessWidget {
  const CobraStretch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        coverimage: powerjumps,
        heading: 'Cobra Stretch 20s',
        para1: cobrastretch30text1,
        para2: '',
        pagecount: '7/8',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const ChestStretch();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const KneePushups();
              },
            ),
          );
        },
      ),
    );
  }
}
