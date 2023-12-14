import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/chest/chest.dart';
import 'package:demo_project/pages/homeScreen/workouts/chest/cobra_stretch.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class ChestStretch extends StatelessWidget {
  const ChestStretch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        ontap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Chest();
              },
            ),
          );
        },
        coverimage: powerjumps,
        heading: 'Chest Stretch 20s',
        para1: cheststretchchesttext1,
        para2: cheststretchchesttext2,
        pagecount: '8/8',
        ontapNext: () {},
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const CobraStretch();
              },
            ),
          );
        },
        ontapClose: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Chest();
              },
            ),
          );
        },
      ),
    );
  }
}
