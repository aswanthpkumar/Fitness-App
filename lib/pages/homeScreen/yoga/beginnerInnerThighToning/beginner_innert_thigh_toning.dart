import 'package:demo_project/pages/homeScreen/yoga/beginnerInnerThighToning/bottom_leg_lift_left.dart';
import 'package:demo_project/pages/homeScreen/yoga/beginnerInnerThighToning/bottom_leg_lift_right.dart';
import 'package:demo_project/pages/homeScreen/yoga/beginnerInnerThighToning/butt_kicks.dart';
import 'package:demo_project/pages/homeScreen/yoga/beginnerInnerThighToning/left_leg_lateral_raise.dart';
import 'package:demo_project/pages/homeScreen/yoga/beginnerInnerThighToning/quick_feet.dart';
import 'package:demo_project/pages/homeScreen/yoga/beginnerInnerThighToning/reclined_oblique_twist.dart';
import 'package:demo_project/pages/homeScreen/yoga/beginnerInnerThighToning/right_leg_lateral_raise.dart';
import 'package:demo_project/pages/homeScreen/yoga/beginnerInnerThighToning/sumo_squat.dart';
import 'package:demo_project/pages/homeScreen/yoga/yoga.dart';
import 'package:flutter/material.dart';
import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/workout.dart';
import 'package:demo_project/saparater.dart';

class BeginnerInnerThighToning extends StatelessWidget {
  const BeginnerInnerThighToning({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) {
                      return const Yoga();
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
                        const Saparater(text: '4 mins', size: 20),
                        GymYogaWorkout(
                          workOutName: 'Quick Feet',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const QuickFeet();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00:20',
                        ),
                        GymYogaWorkout(
                          workOutName: 'Butt Kicks',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const ButtKicks();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00:20',
                        ),
                        GymYogaWorkout(
                          workOutName: 'Bottom Leg Lift Left',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const BottomLegLiftLeft();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00:20',
                        ),
                        GymYogaWorkout(
                          workOutName: 'Bottom Leg Lift Right',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const BottomLegLiftRight();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00:20',
                        ),
                        GymYogaWorkout(
                          workOutName: 'Reclined Oblique Twist',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const ReclinedObliqueTwist();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00:20',
                        ),
                        GymYogaWorkout(
                          workOutName: 'Sumo Squat',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const SumoSquat();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00:20',
                        ),
                        GymYogaWorkout(
                          workOutName: 'Right Leg Later Raise',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const RightLegLateralRaise();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00.20',
                        ),
                        GymYogaWorkout(
                          workOutName: 'Left Leg Lateral Raise',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const LeftLegLateralRaise();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00:20',
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
