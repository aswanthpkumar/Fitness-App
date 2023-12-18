import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/sunSalutationsFlow/sun_solutations_flow.dart';
import 'package:demo_project/pages/homeScreen/yoga/sunSalutationsFlow/upward_facing_dog_1.dart';
import 'package:demo_project/pages/homeScreen/yoga/sunSalutationsFlow/warrior_i_right.dart';
import 'package:flutter/material.dart';

class DownwardFacingDog1 extends StatelessWidget {
  const DownwardFacingDog1({super.key});

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
        heading: 'Downward Facing Dog',
        para1: downwardfacingdogtext1,
        para2: '',
        pagecount: '9/10',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const WarriorIRight();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const UpwardFacingDog1();
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
