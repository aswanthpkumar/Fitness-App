import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/abdominalcrunchesx12.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/mountainerclimberx12.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/sectionAbsbeginner.dart';
import 'package:flutter/material.dart';

class Russian_Twist_x_32 extends StatelessWidget {
  const Russian_Twist_x_32({super.key});

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
                  return const Mountain_Climber_x_12();
                },
              ),
            );
        },
        ontapPrevious: (){
          Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const Abdominal_Crunches_x_12();
                },
              ),
            );
        },
      ),
    );
  }
}
