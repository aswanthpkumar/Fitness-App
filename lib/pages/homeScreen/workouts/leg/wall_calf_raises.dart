import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class WallCalfRaises extends StatelessWidget {
  const WallCalfRaises({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Section(
        coverimage: powerjumps,
        heading: '',
        para1: '',
        para2: '',
        pagecount: '',
        ontapNext: (){},
        ontapPrevious: (){},
      ),
    );
  }
}