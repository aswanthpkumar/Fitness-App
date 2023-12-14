import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/kidsYoga/kids_yoga.dart';
import 'package:demo_project/pages/homeScreen/yoga/kidsYoga/standing_crossover_toe_touches.dart';
import 'package:demo_project/pages/homeScreen/yoga/kidsYoga/warrior_li_left.dart';
import 'package:flutter/material.dart';

class WarriorLiRight extends StatelessWidget {
  const WarriorLiRight({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
        heading: 'Warrior Li Right',
        para1: '',
        para2: '',
        pagecount: '3/9',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const StandingCrossoverToeTouches();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const WarriorLiLeft();
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