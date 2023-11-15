import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/abdominalcrunchesx12.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/leg_raisesx16.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class Plank20 extends StatelessWidget {
  const Plank20({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
          coverimage: powerjumps,
          heading: 'Plank 20s',
          para1: plank20text1,
          para2: '',
          pagecount: '7/16',
          ontapNext: (){Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const AbdominalCrunchesx12();
                },
              ),
            );},

          ontapPrevious: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const LegRaisesx16();
                },
              ),
            );
          }),
    );
  }
}
