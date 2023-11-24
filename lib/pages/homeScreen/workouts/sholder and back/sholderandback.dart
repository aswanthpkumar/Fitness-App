import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/workout.dart';
import 'package:demo_project/pages/homeScreen/workouts/sholder%20and%20back/arms_raises.dart';
import 'package:demo_project/pages/homeScreen/workouts/sholder%20and%20back/arms_scissors.dart';
import 'package:demo_project/pages/homeScreen/workouts/sholder%20and%20back/cat_cow_pose.dart';
import 'package:demo_project/pages/homeScreen/workouts/sholder%20and%20back/child_pose.dart';
import 'package:demo_project/pages/homeScreen/workouts/sholder%20and%20back/rhomboid_pulls.dart';
import 'package:demo_project/pages/homeScreen/workouts/sholder%20and%20back/side_arm_raise.dart';
import 'package:demo_project/pages/homeScreen/workouts/sholder%20and%20back/side_lying_left.dart';
import 'package:demo_project/pages/homeScreen/workouts/sholder%20and%20back/side_lying_right.dart';
import 'package:demo_project/saparater.dart';
import 'package:flutter/material.dart';

class SholderandBack extends StatelessWidget {
  const SholderandBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(strength1),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.only(top: 110, left: 10),
                  color: Colors.blue.withOpacity(.60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: const TextSpan(
                          text: 'The pain you feel today will be the ',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                          children: [
                            TextSpan(
                              text: 'STRENGTH',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        ' you feel tomorrow.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              child: Padding(
                padding: const EdgeInsets.only(top: 300),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.grey,
                      Colors.blueAccent,
                    ]),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      const Saparater(text: '20 mins / 16 workouts', size: 20),
                      GymYogaWorkout(
                        workOutName: 'Arms Raises',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const ArmsRaises();
                              },
                            ),
                          );
                        },
                        workOutTIme: '00:16',
                        // space: 0,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Side Arm Raise',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const SideArmRaise();
                              },
                            ),
                          );
                        },
                        workOutTIme: '00:16',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Side-Lying-Floor\nStretch Left',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const SideLyingFloorStretchLeft();
                              },
                            ),
                          );
                        },
                        workOutTIme: '00:30',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Side-Lying-Floor\nStretch Right',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const SideLyingFloorStretchRight();
                              },
                            ),
                          );
                        },
                        workOutTIme: '00:30',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Arms Scissors',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const ArmsScissors();
                              },
                            ),
                          );
                        },
                        workOutTIme: '00:30',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Rhomboid Pulls',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const RhomboidPulls();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x12',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Cat Cow Pose',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const CatCowPose();
                              },
                            ),
                          );
                        },
                        workOutTIme: '00:30',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Child Pose',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const ChildPose();
                              },
                            ),
                          );
                        },
                        workOutTIme: '00:30',
                        // space: 150,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ]),
    );
  }
}
