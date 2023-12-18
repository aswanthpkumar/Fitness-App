import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/eveningYogaFlow/evening_yoga_flow.dart';
import 'package:demo_project/pages/homeScreen/yoga/eveningYogaFlow/seated_spinal_twist_right.dart';
import 'package:demo_project/pages/homeScreen/yoga/eveningYogaFlow/shoulder_shrugs.dart';
import 'package:flutter/material.dart';

class SeatedSpinalTwistLeft extends StatelessWidget {
  const SeatedSpinalTwistLeft({super.key});

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
        heading: 'Seated Spinal Twist Left',
        para1: seatedspinaltwistlefttext1,
        para2: '',
        pagecount: '2/9',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const SeatedSpinalTwistRight();
              },
            ),
          );
        },
        ontapPrevious: () { Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const ShoulderShrugs();
              },
            ),
          );},
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