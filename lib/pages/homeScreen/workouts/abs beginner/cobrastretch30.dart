import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/plank_30.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/sectionAbsbeginner.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/spinlumbarleft.dart';
import 'package:flutter/material.dart';

class Cobra_Stretch_30s extends StatelessWidget {
  const Cobra_Stretch_30s({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        coverimage: powerjumps,
        heading: 'Cobra Stretch 30s',
        para1: cobrastretch30text1,
        para2: '',
        pagecount: '14/16',
        ontapNext: (){ Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const Spine_Lumbar_Left();
                },
              ),
            );},
        ontapPrevious: (){
           Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const Plank_30();
                },
              ),
            );
        },
      ),
    );
  }
}
