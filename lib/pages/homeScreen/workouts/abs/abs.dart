import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/workout.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/abdominal_crunches_x_16.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/abdominalcrunchesx12.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/cobrastretch30.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/healstouchx20_2.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/heeltouchx20.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/jumping_jacks.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/leg_raisesx16.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/legraisex_14.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/mountainclimber.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/mountainerclimberx12.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/plank20.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/plank_30.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/russian_twist.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/russian_twist_x_32.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/spinlumbarleft.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs/spinlumbarright.dart';
import 'package:demo_project/pages/homeScreen/workouts/workouts.dart';
import 'package:demo_project/saparater.dart';
import 'package:flutter/material.dart';

class Abs extends StatelessWidget {
  const Abs({super.key});

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
                      const Saparater(text: '20 mins / 16 workouts', size: 20),
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
                        workOutTIme: '00.20',
                        // space: 80,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Abdominal Crunches',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const AbdominalCrunches();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x16',
                        // space: 60,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Russian Twist',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const RussianTwistx20();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x20',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Mountain Climber',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const MountainClimberx16();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x16',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Heel Touch',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const HeelTouchx20();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x20',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Leg Raises',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const LegRaisesx16();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x16',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Plank',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const Plank20();
                              },
                            ),
                          );
                        },
                        workOutTIme: '00.20',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Abdominal Crunches',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const AbdominalCrunchesx12();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x12',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Russian Twist',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const RussianTwistx32();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x32',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Mountain Climber',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const MountainClimberx12();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x12',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Hell Touch',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const HeelTouchx202();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x20',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Leg Raises',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const LegRaisesx14();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x14',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Plank',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const Plank30();
                              },
                            ),
                          );
                        },
                        workOutTIme: '00.30',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Cobra Stretch',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const CobraStretch30s();
                              },
                            ),
                          );
                        },
                        workOutTIme: '00.30',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Spine Lumbar Twist\nStrech Left',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const SpineLumbarLeft();
                              },
                            ),
                          );
                        },
                        workOutTIme: '00.30',
                        // space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Spine Lumbae Twist\nStretch Right',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const SpineLumbarRight();
                              },
                            ),
                          );
                        },
                        workOutTIme: '00.30',
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
