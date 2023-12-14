import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/leg/backward_lunge.dart';
import 'package:demo_project/pages/homeScreen/workouts/leg/donkey_kicks_right.dart';
import 'package:demo_project/pages/homeScreen/workouts/leg/leg.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:flutter/material.dart';

class DonkeyKicksLeft extends StatelessWidget {
  const DonkeyKicksLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Section(
        ontap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Leg();
              },
            ),
          );
        },
        coverimage: powerjumps,
        heading: 'Donkey Kicks Left x16',
        para1: donkeykickslefttext1,
        para2: '',
        pagecount: '6/11',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const DonkeyKicksRight();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const BACKWARDlUNGE();
              },
            ),
          );
        },
        ontapClose: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Leg();
              },
            ),
          );
        },
      ),
    );
  }
}
