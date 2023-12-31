import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/sunSalutationsFlow/downward_faceing_dog.dart';
import 'package:demo_project/pages/homeScreen/yoga/sunSalutationsFlow/push_up_hold.dart';
import 'package:demo_project/pages/homeScreen/yoga/sunSalutationsFlow/sun_solutations_flow.dart';
import 'package:flutter/material.dart';

class UpwardFacingDog extends StatelessWidget {
  const UpwardFacingDog({super.key});

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
        heading: 'Upward Facing Dog',
        para1: upwardfacingdogtext1,
        para2: '',
        pagecount: '5/10',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const DownwardFacingDog();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const PushUpHold();
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
