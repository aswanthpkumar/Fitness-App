import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/eveningYogaFlow/easy_splits_forward_fold.dart';
import 'package:demo_project/pages/homeScreen/yoga/eveningYogaFlow/evening_yoga_flow.dart';
import 'package:demo_project/pages/homeScreen/yoga/eveningYogaFlow/seated_side_bend_left.dart';
import 'package:flutter/material.dart';

class SeatedSideBendRight extends StatelessWidget {
  const SeatedSideBendRight({super.key});

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
        heading: 'Seated Side Bend Right',
        para1: seatedsidebendrighttext1,
        para2: '',
        pagecount: '5/9',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const EasySplitsForwardFold();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const SeatedSideBendLeft();
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
