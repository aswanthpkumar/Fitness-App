import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/Workout.dart';
import 'package:demo_project/pages/homeScreen/workouts/leg/backward_lunge.dart';
import 'package:demo_project/pages/homeScreen/workouts/leg/calf_stretch_left.dart';
import 'package:demo_project/pages/homeScreen/workouts/leg/calf_stretch_right.dart';
import 'package:demo_project/pages/homeScreen/workouts/leg/donkey_kicks_left.dart';
import 'package:demo_project/pages/homeScreen/workouts/leg/donkey_kicks_right.dart';
import 'package:demo_project/pages/homeScreen/workouts/leg/left_quad_stretch_wall.dart';
import 'package:demo_project/pages/homeScreen/workouts/leg/right_quad_stretch_wall.dart';
import 'package:demo_project/pages/homeScreen/workouts/leg/side_hop.dart';
import 'package:demo_project/pages/homeScreen/workouts/leg/side_lying_left.dart';
import 'package:demo_project/pages/homeScreen/workouts/leg/side_lying_right.dart';
import 'package:demo_project/pages/homeScreen/workouts/leg/squats.dart';
import 'package:demo_project/pages/homeScreen/workouts/leg/wall_calf_raises.dart';
import 'package:demo_project/saparater.dart';
import 'package:flutter/material.dart';

class Leg extends StatelessWidget {
  const Leg({super.key});

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
                      const Saparater(text: '9 mins / 12 workouts', size: 20),
                      GymYogaWorkout(
                        workOutName: 'Side Hop',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const SideHop();
                              },
                            ),
                          );
                        },
                        workOutTIme: '00:30',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Squats',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const Squats();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x12',
                        // space: 0,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Side-Lying Leg Lift\nLeft',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const SideLyingLegLiftLeft();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x12',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Side-Lying Leg Lift\nRight',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const SideLyingLegLiftRight();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x12',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Backward Lunge',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const BACKWARDlUNGE();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x14',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Donkey Kicks Left',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const DonkeyKicksLeft();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x16',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Donkey Kicks Right',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const DonkeyKicksRight();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x16',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Left Quad Stretch\nwith Wall',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const LeftQuadStretchwithWall();
                              },
                            ),
                          );
                        },
                        workOutTIme: '00:30',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Right Quad Stretch\nwith Wall',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const RightQuadStretchwithWall();
                              },
                            ),
                          );
                        },
                        workOutTIme: '00:30',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Wall Calf Raises',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const WallCalfRaises();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x12',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Calf Stretch Left',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const CalfStretchLeft();
                              },
                            ),
                          );
                        },
                        workOutTIme: '00:30',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Calf Stretch Right',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const CalfStretchRight();
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
