import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/morningYogaFlow/morning_yoga_flow.dart';
import 'package:demo_project/pages/homeScreen/yoga/morningYogaFlow/side_to_side_tits.dart';
import 'package:demo_project/pages/homeScreen/yoga/morningYogaFlow/side_to_side_turns.dart';
import 'package:flutter/material.dart';

class UpDownNods extends StatelessWidget {
  const UpDownNods({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
          ontap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const MorningYogaFlow();
                },
              ),
            );
          },
          coverimage: powerjumps,
          heading: 'Up and Down Nods',
          para1: '',
          para2: '',
          pagecount: '3/9',
          ontapNext: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const SidetoSideTurns();
                },
              ),
            );
          },
          ontapPrevious: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const SidetoSideTilts();
                },
              ),
            );
          },
          ontapClose: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) {
                  return const MorningYogaFlow();
                },
              ),
            );
          },
        ),
    );
  }
}