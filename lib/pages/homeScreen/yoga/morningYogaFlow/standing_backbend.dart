import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/morningYogaFlow/morning_yoga_flow.dart';
import 'package:demo_project/pages/homeScreen/yoga/morningYogaFlow/standing_back_stretches.dart';
import 'package:flutter/material.dart';

class StandingBackBend extends StatelessWidget {
  const StandingBackBend({super.key});

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
        heading: 'Standing Back Bend',
        para1: standingbackbendtext1,
        para2: '',
        pagecount: '9/9',
        ontapNext: () {},
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const StandingBackStretches();
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
