import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/eveningYogaFlow/bridge.dart';
import 'package:demo_project/pages/homeScreen/yoga/eveningYogaFlow/evening_yoga_flow.dart';
import 'package:flutter/material.dart';

class PloughPose extends StatelessWidget {
  const PloughPose({super.key});

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
        heading: 'Plough Pose',
        para1: ploughposttext1,
        para2: '',
        pagecount: '9/9',
        ontapNext: () {},
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Bridge();
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
