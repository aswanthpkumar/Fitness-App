import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/abdominalcrunchesx12.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/mountainerclimberx12.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class RussianTwistx32 extends StatelessWidget {
  const RussianTwistx32({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Section(
        coverimage: powerjumps,
        heading: 'Russian Twist x32',
        para1: russiantwistx32text1,
        para2: '',
        pagecount: '9/16',
        ontapNext: (){
           Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const MountainClimberx12();
                },
              ),
            );
        },
        ontapPrevious: (){
          Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const AbdominalCrunchesx12();
                },
              ),
            );
        },
      ),
    );
  }
}
