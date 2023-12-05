import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/arams_raises.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/triceps_dips.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class SideArmRaiseArm extends StatelessWidget {
  const SideArmRaiseArm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        coverimage: powerjumps,
        heading: 'Side Arm Raises 30s',
        para1: sidearmraisetext1,
        para2: '',
        pagecount: '2/13',
        ontapNext: (){
           Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const TricepsDips();
                },
              ),
            );
        },
        ontapPrevious: (){
           Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const ArmsRaises();
                },
              ),
            );
        },
      ),
    );
  }
}
