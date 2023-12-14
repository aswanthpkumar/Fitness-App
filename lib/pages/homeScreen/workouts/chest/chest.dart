import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/workout.dart';
import 'package:demo_project/pages/homeScreen/workouts/chest/chest_stretch.dart';
import 'package:demo_project/pages/homeScreen/workouts/chest/cobra_stretch.dart';
import 'package:demo_project/pages/homeScreen/workouts/chest/incline_push_ups.dart';
import 'package:demo_project/pages/homeScreen/workouts/chest/jumping_jacks.dart';
import 'package:demo_project/pages/homeScreen/workouts/chest/knee_pushups.dart';
import 'package:demo_project/pages/homeScreen/workouts/chest/push_ups.dart';
import 'package:demo_project/pages/homeScreen/workouts/chest/triceps_dips.dart';
import 'package:demo_project/pages/homeScreen/workouts/chest/wide_arm_pushups.dart';
import 'package:demo_project/pages/homeScreen/workouts/workouts.dart';
import 'package:demo_project/saparater.dart';
import 'package:flutter/material.dart';

class Chest extends StatelessWidget {
  const Chest({super.key});

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
                      const Saparater(text: '7 mins / 8 workouts', size: 20),
                      GymYogaWorkout(
                        workOutName: 'Jumping Jacks',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const JumpingJacks();
                              },
                            ),
                          );
                        },
                        workOutTIme: '00:30',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Incline Push-Ups',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const InclinePushups();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x10',
                        // space: 0,
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
                        workOutTIme: 'x8',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Wide Arm Push-Ups',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const WideArmPushups();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x8',
                        // space: 150,
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
                        workOutName: 'Knee Push-ups',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const KneePushups();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x8',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Cobra Stretch',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const CobraStretch();
                              },
                            ),
                          );
                        },
                        workOutTIme: '00:20',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Chest Stretch',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const ChestStretch();
                              },
                            ),
                          );
                        },
                        workOutTIme: '00:20',
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
