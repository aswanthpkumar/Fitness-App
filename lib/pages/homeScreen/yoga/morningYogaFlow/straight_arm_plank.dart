import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/morningYogaFlow/morning_yoga_flow.dart';
import 'package:demo_project/pages/homeScreen/yoga/morningYogaFlow/prone_triceps_pushups.dart';
import 'package:demo_project/pages/homeScreen/yoga/morningYogaFlow/standing_back_stretches.dart';
import 'package:flutter/material.dart';

class StraightarmPlank extends StatelessWidget {
  const StraightarmPlank({super.key});

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
        heading: 'Straight arm Plank',
        para1: '',
        para2: '',
        pagecount: '7/9',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const StandingBackStretches();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const ProneTricepsPushups();
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
