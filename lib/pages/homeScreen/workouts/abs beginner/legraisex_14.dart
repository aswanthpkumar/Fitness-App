import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/healstouchx20_2.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/plank_30.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/sectionAbsbeginner.dart';
import 'package:flutter/material.dart';

class Leg_Raises_x_14 extends StatelessWidget {
  const Leg_Raises_x_14({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        coverimage: powerjumps,
        heading: 'Leg Raises x 14',
        para1: legraisesx14text1,
        para2: legraisesx14text2,
        pagecount: '12/16',
        ontapNext: (){
           Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const Plank_30();
                },
              ),
            );
        },
        ontapPrevious: (){
           Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const Heel_Touch_x_20_2();
                },
              ),
            );
        },
      ),
    );
  }
}
