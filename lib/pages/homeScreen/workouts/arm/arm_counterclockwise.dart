import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/arm_clockwise.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/diamond_pushups.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class ArmCriclesCounterclockwise extends StatelessWidget {
  const ArmCriclesCounterclockwise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        coverimage: powerjumps,
        heading: 'Arm Cricles CounterClockwise 30s',
        para1: armconunterclockwisetexd1,
        para2: '',
        pagecount: '5/13',
        ontapNext: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const DiamondPushups();
                },
              ),
            );
        },
        ontapPrevious: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const ArmCriclesClockwise();
                },
              ),
            );
        },
      ),
    );
  }
}
