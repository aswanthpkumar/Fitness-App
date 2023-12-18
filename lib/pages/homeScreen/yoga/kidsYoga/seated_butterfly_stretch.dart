import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/kidsYoga/cobras.dart';
import 'package:demo_project/pages/homeScreen/yoga/kidsYoga/kids_yoga.dart';
import 'package:demo_project/pages/homeScreen/yoga/kidsYoga/locust_pose.dart';
import 'package:flutter/material.dart';

class SeatedButterflyStretch extends StatelessWidget {
  const SeatedButterflyStretch({super.key});

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
        heading: 'Seated Butterfly Stretch',
        para1: seatedbutterflystretchtext1,
        para2: '',
        pagecount: '8/9',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const Cobras();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const LocustPose();
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