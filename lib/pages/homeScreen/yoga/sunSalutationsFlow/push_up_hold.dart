import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/sunSalutationsFlow/half_forward_bend.dart';
import 'package:demo_project/pages/homeScreen/yoga/sunSalutationsFlow/sun_solutations_flow.dart';
import 'package:demo_project/pages/homeScreen/yoga/sunSalutationsFlow/upward_facing_dog.dart';
import 'package:flutter/material.dart';

class PushUpHold extends StatelessWidget {
  const PushUpHold({super.key});

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
        heading: 'Push-up Hold',
        para1: pushupholdtext1,
        para2: '',
        pagecount: '4/10',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const UpwardFacingDog();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const HalfForwardBend();
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
