import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/section_workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/kidsYoga/downward_facing_dog.dart';
import 'package:demo_project/pages/homeScreen/yoga/kidsYoga/kids_yoga.dart';
import 'package:demo_project/pages/homeScreen/yoga/kidsYoga/locust_pose.dart';
import 'package:flutter/material.dart';

class TorsoTwist extends StatelessWidget {
  const TorsoTwist({super.key});

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
        heading: 'Torso Twist',
        para1: torsotwisttext1,
        para2: '',
        pagecount: '6/9',
        ontapNext: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const LocustPose();
              },
            ),
          );
        },
        ontapPrevious: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const DownwardFacinDogKids();
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