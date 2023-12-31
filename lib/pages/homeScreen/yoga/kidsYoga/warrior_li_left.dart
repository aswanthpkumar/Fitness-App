import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/kidsYoga/kids_yoga.dart';
import 'package:demo_project/pages/homeScreen/yoga/kidsYoga/standing_back_stretches.dart';
import 'package:demo_project/pages/homeScreen/yoga/kidsYoga/warrior_li_right.dart';
import 'package:flutter/material.dart';

class WarriorLiLeft extends StatelessWidget {
  const WarriorLiLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        ontap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const KidsYoga();
              },
            ),
          );
        },
        coverimage: powerjumps,
        heading: 'Warrior Li Left',
        para1: warriorilefttext1,
        para2: '',
        pagecount: '2/9',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const WarriorLiRight();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const StandingBackStretches();
              },
            ),
          );
        },
        ontapClose: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const KidsYoga();
              },
            ),
          );
        },
      ),
    );
  }
}
