import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/eveningYogaFlow/evening_yoga_flow.dart';
import 'package:demo_project/pages/homeScreen/yoga/eveningYogaFlow/seated_side_bend_left.dart';
import 'package:demo_project/pages/homeScreen/yoga/eveningYogaFlow/seated_spinal_twist_left.dart';
import 'package:flutter/material.dart';

class SeatedSpinalTwistRight extends StatelessWidget {
  const SeatedSpinalTwistRight({super.key});

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
        heading: 'Seated Spinal Twist Right',
        para1: '',
        para2: '',
        pagecount: '3/9',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const SeatedSideBendLeft();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const SeatedSpinalTwistLeft();
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
