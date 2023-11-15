
import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/plank20.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/russiantwistx32.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class AbdominalCrunchesx12 extends StatelessWidget {
  const AbdominalCrunchesx12({super.key});

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
                  return const RussianTwistx32();
                },
              ),
            );},
        ontapPrevious: (){
          Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const Plank20();
                },
              ),
            );
        },
      ),
    );
  }
}
