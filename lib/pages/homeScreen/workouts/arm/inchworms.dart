import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/pushups.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class Inchworms extends StatelessWidget {
  const Inchworms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        coverimage: powerjumps,
        heading: 'Inchworms x8',
        para1: inchwormsx8text1,
        para2: '',
        pagecount: '13/13',
        ontapNext: () {},
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Pushups();
              },
            ),
          );
        },
      ),
    );
  }
}
