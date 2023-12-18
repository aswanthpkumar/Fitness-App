import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/sunSalutationsFlow/downward_facing_dog_1.dart';
import 'package:demo_project/pages/homeScreen/yoga/sunSalutationsFlow/sun_solutations_flow.dart';
import 'package:flutter/material.dart';

class WarriorIRight extends StatelessWidget {
  const WarriorIRight({super.key});

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
        heading: 'Warrior I Right',
        para1: warriroirighttext1,
        para2: '',
        pagecount: '10/10',
        ontapNext: () {},
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const DownwardFacingDog1();
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
