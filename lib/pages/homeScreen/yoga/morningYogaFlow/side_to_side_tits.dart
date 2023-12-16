import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/morningYogaFlow/easy_pose.dart';
import 'package:demo_project/pages/homeScreen/yoga/morningYogaFlow/morning_yoga_flow.dart';
import 'package:demo_project/pages/homeScreen/yoga/morningYogaFlow/upanddown_nods.dart';
import 'package:flutter/material.dart';

class SidetoSideTilts extends StatelessWidget {
  const SidetoSideTilts({super.key});

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
        heading: 'Side to Side Tilts',
        para1: '',
        para2: '',
        pagecount: '2/9',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const UpDownNods();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const EasyPose();
              },
            ),
          );
        },
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
