import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/side_arm_raise.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class ArmsRaises extends StatelessWidget {
  const ArmsRaises({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        coverimage: powerjumps,
        heading: 'Arm Raises 30s',
        para1: armraises30stext1,
        para2: '',
        pagecount: '1/13',
        ontapNext: (){
           Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const SideArmRaiseArm();
                },
              ),
            );
        },
        ontapPrevious: (){},
      ),
    );
  }
}
