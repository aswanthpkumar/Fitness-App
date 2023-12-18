import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/eveningYogaFlow/evening_yoga_flow.dart';
import 'package:demo_project/pages/homeScreen/yoga/eveningYogaFlow/seated_side_bend_right.dart';
import 'package:demo_project/pages/homeScreen/yoga/eveningYogaFlow/seated_spinal_twist_right.dart';
import 'package:flutter/material.dart';

class SeatedSideBendLeft extends StatelessWidget {
  const SeatedSideBendLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        ontap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const EveningYogaFlow();
              },
            ),
          );
        },
        coverimage: powerjumps,
        heading: 'Seated Side Bend Left',
        para1: seatedsidebendlefttext1,
        para2: '',
        pagecount: '4/9',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const SeatedSideBendRight();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const SeatedSpinalTwistRight();
              },
            ),
          );
        },
        ontapClose: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const EveningYogaFlow();
              },
            ),
          );
        },
      ),
    );
  }
}
