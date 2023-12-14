import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/sunSolutationsFlow/downward_facing_dog_1.dart';
import 'package:demo_project/pages/homeScreen/yoga/sunSolutationsFlow/sun_solutations_flow.dart';
import 'package:demo_project/pages/homeScreen/yoga/sunSolutationsFlow/warrior_i_left.dart';
import 'package:flutter/material.dart';

class UpwardFacingDog1 extends StatelessWidget {
  const UpwardFacingDog1({super.key});

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
        para1: '',
        para2: '',
        pagecount: '8/10',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const DownwardFacingDog1();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const WarriorILeft();
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
