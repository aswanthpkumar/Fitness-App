import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/healstouchx20_2.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/russiantwistx32.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/sectionAbsbeginner.dart';
import 'package:flutter/material.dart';

class Mountain_Climber_x_12 extends StatelessWidget {
  const Mountain_Climber_x_12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        coverimage: powerjumps,
        heading: 'Mountain Climber x12',
        para1: mountainclimberx12text1,
        para2: mountainclimberx12text2,
        pagecount: '10/16',
        ontapNext: (){
           Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const Heel_Touch_x_20_2();
                },
              ),
            );
        },
        ontapPrevious: (){
           Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const Russian_Twist_x_32();
                },
              ),
            );
        },
      ),
    );
  }
}
