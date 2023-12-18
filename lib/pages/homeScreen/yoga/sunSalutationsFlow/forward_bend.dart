import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/sunSalutationsFlow/chair.dart';
import 'package:demo_project/pages/homeScreen/yoga/sunSalutationsFlow/half_forward_bend.dart';
import 'package:demo_project/pages/homeScreen/yoga/sunSalutationsFlow/sun_solutations_flow.dart';
import 'package:flutter/material.dart';

class Forward extends StatelessWidget {
  const Forward({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        ontap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const SunSolutationsFlow();
              },
            ),
          );
        },
        coverimage: powerjumps,
        heading: 'Forward Bend',
        para1: forwardbendtext1,
        para2: '',
        pagecount: '2/10',
        ontapNext: () { Navigator.of(context).push(
            MaterialPageRoute(  
              builder: (ctx) {
                return const HalfForwardBend();
              },
            ),
          );},
        ontapPrevious: () { Navigator.of(context).push(
            MaterialPageRoute(  
              builder: (ctx) {
                return const Chair();
              },
            ),
          );},
        ontapClose: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const SunSolutationsFlow();
              },
            ),
          );
        },
      ),
    );
  }
}
