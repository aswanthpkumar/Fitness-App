import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/GymYogaWorkout.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/Abdominal_Crunchesx16.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/abdominalcrunchesx12.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/cobrastretch30.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/healstouchx20_2.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/heeltouchx20.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/jumping_jacks.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/leg_raisesx16.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/legraisex_14.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/mountainclimber.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/mountainerclimberx12.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/plank20.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/plank_30.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/russianTwist.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/russiantwistx32.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/spinlumbarleft.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/spinlumbarright.dart';
import 'package:demo_project/saparater.dart';
import 'package:flutter/material.dart';

class AbsBeginner extends StatelessWidget {
  const AbsBeginner({super.key});

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
                        workOutName: 'Jumping Jacks',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const Jumping_Jacks();
                              },
                            ),
                          );
                        },
                        workOutTIme: '00.20',
                        space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Abdominal Crunches',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const Abdominal_Crunches();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x16',
                        space: 0,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Russian Twist',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const Russian_Twist_x_20();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x20',
                        space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Mountain Climber',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const Mountain_Climber_x_16();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x16',
                        space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Heel Touch',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const Heel_Touch_x_20();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x20',
                        space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Leg Raises',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const Leg_Raises_x_16();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x16',
                        space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Plank',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const Plank_20();
                              },
                            ),
                          );
                        },
                        workOutTIme: '00.20',
                        space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Abdominal Crunches',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const Abdominal_Crunches_x_12();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x12',
                        space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Russian Twist',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const Russian_Twist_x_32();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x32',
                        space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Mountain Climber',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const Mountain_Climber_x_12();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x12',
                        space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Hell Touch',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const Heel_Touch_x_20_2();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x20',
                        space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Leg Raises',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const Leg_Raises_x_14();
                              },
                            ),
                          );
                        },
                        workOutTIme: 'x14',
                        space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Plank',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const Plank_30();
                              },
                            ),
                          );
                        },
                        workOutTIme: '00.30',
                        space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Cobra Stretch',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const Cobra_Stretch_30s();
                              },
                            ),
                          );
                        },
                        workOutTIme: '00.30',
                        space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Spine Lumbar Twist\nStrech Left',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const Spine_Lumbar_Left();
                              },
                            ),
                          );
                        },
                        workOutTIme: '00.30',
                        space: 150,
                      ),
                      GymYogaWorkout(
                        workOutName: 'Spine Lumbae Twist\nStretch Right',
                        workOutImage: powerjumps,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const Spine_Lumbar_Right();
                              },
                            ),
                          );
                        },
                        workOutTIme: '00.30',
                        space: 150,
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
