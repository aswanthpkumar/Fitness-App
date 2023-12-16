import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/morningYogaFlow/morning_yoga_flow.dart';
import 'package:demo_project/pages/homeScreen/yoga/morningYogaFlow/side_to_side_tits.dart';
import 'package:flutter/material.dart';

class EasyPose extends StatelessWidget {
  const EasyPose({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        ontap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const MorningYogaFlow();
              },
            ),
          );
        },
        coverimage: powerjumps,
        heading: 'Easy Pose',
        para1: '',
        para2: '',
        pagecount: '1/9',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const SidetoSideTilts();
              },
            ),
          );
        },
        ontapPrevious: () {},
        ontapClose: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const MorningYogaFlow();
              },
            ),
          );
        },
      ),
    );
  }
}
