import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/abdominalcrunchesx12.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/leg_raisesx16.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/sectionAbsbeginner.dart';
import 'package:flutter/material.dart';

class Plank_20 extends StatelessWidget {
  const Plank_20({super.key});

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
                  return const Abdominal_Crunches_x_12();
                },
              ),
            );},
          ontapPrevious: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const Leg_Raises_x_16();
                },
              ),
            );
          }),
    );
  }
}
