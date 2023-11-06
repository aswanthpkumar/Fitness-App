
import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/plank20.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/russiantwistx32.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/sectionAbsbeginner.dart';
import 'package:flutter/material.dart';

class Abdominal_Crunches_x_12 extends StatelessWidget {
  const Abdominal_Crunches_x_12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        coverimage: powerjumps,
        heading: 'Abdominal Crunches x 12',
        para1: abdominalCrunchesx12text1,
        para2: abdominalCrunchesx12text2,
        pagecount: '8/16',
        ontapNext: (){Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const Russian_Twist_x_32();
                },
              ),
            );},
        ontapPrevious: (){
          Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const Plank_20();
                },
              ),
            );
        },
      ),
    );
  }
}
