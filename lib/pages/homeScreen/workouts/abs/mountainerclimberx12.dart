import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/healstouchx20_2.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/russiantwistx32.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class MountainClimberx12 extends StatelessWidget {
  const MountainClimberx12({super.key});

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
                  return const HeelTouchx202();
                },
              ),
            );
        },
        ontapPrevious: (){
           Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const RussianTwistx32();
                },
              ),
            );
        },
      ),
    );
  }
}
