import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/chest/incline_push_ups.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class JumpingJacks extends StatelessWidget {
  const JumpingJacks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        coverimage: powerjumps,
        heading: 'Jumping Jack 30s',
        para1: jumpingjackstext1,
        para2: jumpingjackstext2,
        pagecount: '1/8',
        ontapNext: (){
           Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const InclinePushups();
                },
              ),
            );
        },
        ontapPrevious: (){},
      ),
    );
  }
}
