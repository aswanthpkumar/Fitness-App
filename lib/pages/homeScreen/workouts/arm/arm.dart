import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/workout.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/arams_raises.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/arm_clockwise.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/arm_counterclockwise.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/chest_press_pluse.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/diagonal_plank.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/diamond_pushups.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/inchworms.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/leg_barbell_curl_left.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/leg_barbell_left.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/punches.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/pushups.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/side_arm_raise.dart';
import 'package:demo_project/pages/homeScreen/workouts/arm/triceps_dips.dart';
import 'package:demo_project/pages/homeScreen/workouts/workouts.dart';
import 'package:demo_project/saparater.dart';
import 'package:flutter/material.dart';

class Arm extends StatelessWidget {
  const Arm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) {
                    return const Gym();
                  },
                ),
              );
            },
            icon: const Icon(Icons.arrow_back)),
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
                      const Saparater(text: '11 mins / 13 workouts', size: 20),
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
                        workOutTIme: '00:30',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Side Arm Raise',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const SideArmRaiseArm();
                              },
                            ),
                          );
                        },
                        workOutTIme: '00:30',
                        // space: 0,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Triceps Dips',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const TricepsDips();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x10',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Arm Circles\nClockwise',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const ArmCriclesClockwise();
                              },
                            ),
                          );
                        },
                        workOutTIme: '00:30',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Arm Circles\nCounterclockwise',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const ArmCriclesCounterclockwise();
                              },
                            ),
                          );
                        },
                        workOutTIme: '00:30',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Diamond Push-Ups',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const DiamondPushups();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x6',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Chest Press\nPluse',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const ChestPressPluse();
                              },
                            ),
                          );
                        },
                        workOutTIme: '00:30',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Leg Barbell\nCurl Left',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const LegBarbellCurlLeft();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x8',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Leg Barbell\nCurl Right',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const LegBarbellCurlRight();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x8',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Diagonal Plank',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const DiagonalPlank();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x10',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Punches',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const Punches();
                              },
                            ),
                          );
                        },
                        workOutTIme: '00:30',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Push-Ups',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const Pushups();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x10',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Inchworms',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const Inchworms();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x8',
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
