import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/yoga/morningYogaFlow/morning_yoga_flow.dart';
import 'package:demo_project/pages/homeScreen/yoga/morningYogaFlow/prone_triceps_pushups.dart';
import 'package:demo_project/pages/homeScreen/yoga/morningYogaFlow/side_to_side_turns.dart';
import 'package:flutter/material.dart';

import '../../workouts/section_workouts.dart';

class SphinxPose extends StatelessWidget {
  const SphinxPose({super.key});

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
          heading: 'Sphinx Pose',
          para1: '',
          para2: '',
          pagecount: '5/9',
          ontapNext: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const ProneTricepsPushups();
                },
              ),
            );
          },
          ontapPrevious: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const SidetoSideTurns();
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