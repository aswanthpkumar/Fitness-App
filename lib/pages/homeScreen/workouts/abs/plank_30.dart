import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/cobrastretch30.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/legraisex_14.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class Plank30 extends StatelessWidget {
  const Plank30({super.key});

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
                  return const CobraStretch30s();
                },
              ),
            );
        },
        ontapPrevious: (){
           Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const LegRaisesx14();
                },
              ),
            );
        },
      ),
    );
  }
}
