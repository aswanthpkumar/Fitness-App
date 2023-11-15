import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/Abdominal_Crunchesx16.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class JumpingJacks extends StatelessWidget {
  const JumpingJacks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        coverimage: powerjumps,
        heading: 'Jumping Jacks 20s',
        para1: jumpingjackstext1,
        para2: jumpingjackstext2,
        pagecount: '1/16',
        ontapNext:() {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const AbdominalCrunches();
              },
            ),
          );
        }, ontapPrevious: () {  },
      ),
    );
  }
}
