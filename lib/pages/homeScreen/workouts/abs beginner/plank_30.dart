import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/cobrastretch30.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/legraisex_14.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/sectionAbsbeginner.dart';
import 'package:flutter/material.dart';

class Plank_30 extends StatelessWidget {
  const Plank_30({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        coverimage: powerjumps,
        heading: 'Plank 30s',
        para1: plank30text1,
        para2: plank30text2,
        pagecount: '13/16',
        ontapNext: (){
           Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const Cobra_Stretch_30s();
                },
              ),
            );
        },
        ontapPrevious: (){
           Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const Leg_Raises_x_14();
                },
              ),
            );
        },
      ),
    );
  }
}
