import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/kidsYoga/kids_yoga.dart';
import 'package:demo_project/pages/homeScreen/yoga/kidsYoga/seated_butterfly_stretch.dart';
import 'package:demo_project/pages/homeScreen/yoga/kidsYoga/torso_twist.dart';
import 'package:flutter/material.dart';

class LocustPose extends StatelessWidget {
  const LocustPose({super.key});

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
        heading: 'Locust Pose',
        para1: '',
        para2: '',
        pagecount: '7/9',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const SeatedButterflyStretch();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const TorsoTwist();
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