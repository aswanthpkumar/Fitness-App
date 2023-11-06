import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/heeltouchx20.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/plank20.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/sectionAbsbeginner.dart';
import 'package:flutter/material.dart';

class Leg_Raises_x_16 extends StatelessWidget {
  const Leg_Raises_x_16({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
          coverimage: powerjumps,
          heading: 'Leg Raises x16',
          para1: legraisesx16text1,
          para2: '',
          pagecount: '6/16',
          ontapNext: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const Plank_20();
                },
              ),
            );
          },
          ontapPrevious: (){
             Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const Heel_Touch_x_20();
                },
              ),
            );
          }),
    );
  }
}
