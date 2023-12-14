import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/sunSolutationsFlow/sun_solutations_flow.dart';
import 'package:demo_project/pages/homeScreen/yoga/sunSolutationsFlow/upward_facing_dog.dart';
import 'package:demo_project/pages/homeScreen/yoga/sunSolutationsFlow/warrior_i_left.dart';
import 'package:flutter/material.dart';

class DownwardFacingDog extends StatelessWidget {
  const DownwardFacingDog({super.key});

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
        para1: '',
        para2: '',
        pagecount: '6/10',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const WarriorILeft();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const UpwardFacingDog();
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
