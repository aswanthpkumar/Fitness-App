import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/Abdominal_Crunchesx16.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/sectionAbsbeginner.dart';
import 'package:flutter/material.dart';

class Jumping_Jacks extends StatelessWidget {
  const Jumping_Jacks({super.key});

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
                return const Abdominal_Crunches();
              },
            ),
          );
        }, ontapPrevious: () {  },
      ),
    );
  }
}
