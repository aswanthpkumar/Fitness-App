import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/legraisex_14.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/mountainerclimberx12.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/sectionAbsbeginner.dart';
import 'package:flutter/material.dart';

class Heel_Touch_x_20_2 extends StatelessWidget {
  const Heel_Touch_x_20_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        coverimage: powerjumps,
        heading: 'Heel Touch x 20',
        para1: heeltouchx20_2text1,
        para2: '',
        pagecount: '11/16',
        ontapNext: (){ Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const Leg_Raises_x_14();
                },
              ),
            );},
        ontapPrevious: (){
           Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const Mountain_Climber_x_12();
                },
              ),
            );
        },
      ),
    );
  }
}
