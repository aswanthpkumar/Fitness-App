import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/heeltouchx20.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/plank20.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class LegRaisesx16 extends StatelessWidget {
  const LegRaisesx16({super.key});

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
                  return const Plank20();
                },
              ),
            );
          },
          ontapPrevious: (){
             Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const HeelTouchx20();
                },
              ),
            );
          }),
    );
  }
}
