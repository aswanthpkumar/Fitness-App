import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/sunSalutationsFlow/forward_bend.dart';
import 'package:demo_project/pages/homeScreen/yoga/sunSalutationsFlow/push_up_hold.dart';
import 'package:demo_project/pages/homeScreen/yoga/sunSalutationsFlow/sun_solutations_flow.dart';
import 'package:flutter/material.dart';

class HalfForwardBend extends StatelessWidget {
  const HalfForwardBend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        ontap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const SunSolutationsFlow();
              },
            ),
          );
        },
        coverimage: powerjumps,
        heading: 'Half Forward Bend',
        para1: halfforwardbendtext1,
        para2: '',
        pagecount: '3/10',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const PushUpHold();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Forward();
              },
            ),
          );
        },
        ontapClose: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const SunSolutationsFlow();
              },
            ),
          );
        },
      ),
    );
  }
}
