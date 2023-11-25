import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/chest/cobra_stretch.dart';
import 'package:demo_project/pages/homeScreen/workouts/chest/triceps_dips.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class KneePushups extends StatelessWidget {
  const KneePushups({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        coverimage: powerjumps,
        heading: 'Knee Push-Ups x8',
        para1: kneepushstext1,
        para2: '',
        pagecount: '6/8',
        ontapNext: (){
           Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const CobraStretch();
                },
              ),
            );
        },
        ontapPrevious: (){
           Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const TricepsDips();
                },
              ),
            );
        },
      ),
    );
  }
}