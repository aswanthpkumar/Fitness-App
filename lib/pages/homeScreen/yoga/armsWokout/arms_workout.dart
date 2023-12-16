import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/workout.dart';
import 'package:demo_project/pages/homeScreen/yoga/armsWokout/crab_walk.dart';
import 'package:demo_project/pages/homeScreen/yoga/armsWokout/elbows_back.dart';
import 'package:demo_project/pages/homeScreen/yoga/armsWokout/plank_and_reach.dart';
import 'package:demo_project/pages/homeScreen/yoga/armsWokout/plank_taps.dart';
import 'package:demo_project/pages/homeScreen/yoga/armsWokout/standing_biceps_stretch_left.dart';
import 'package:demo_project/pages/homeScreen/yoga/armsWokout/standing_biceps_stretch_right.dart';
import 'package:demo_project/pages/homeScreen/yoga/armsWokout/triceps_stretch_left.dart';
import 'package:demo_project/pages/homeScreen/yoga/armsWokout/triceps_stretch_right.dart';
import 'package:demo_project/pages/homeScreen/yoga/yoga.dart';
import 'package:demo_project/saparater.dart';
import 'package:flutter/material.dart';

class ArmsWorkout extends StatelessWidget {
  const ArmsWorkout({super.key});

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
                        const Saparater(text: '4 mins ', size: 20),
                        GymYogaWorkout(
                          workOutName: 'Elbow Back',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const ElbowBack();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00:20',
                        ),
                        GymYogaWorkout(
                          workOutName: 'Plank Taps',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const PlankTaps();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00:20',
                        ),
                        GymYogaWorkout(
                          workOutName: 'Plank and Reach',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const PlankandReach();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00:20',
                        ),
                        GymYogaWorkout(
                          workOutName: 'Crab Walk',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const CrabWalk();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00:20',
                        ),
                        GymYogaWorkout(
                          workOutName: 'Triceps Stretch Left',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const TricepsStretchLeft();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00:20',
                        ),
                        GymYogaWorkout(
                          workOutName: 'Triceps Stretch Right',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const TricepsStretchRight();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00:20',
                        ),
                        GymYogaWorkout(
                          workOutName: 'Standing Biceps Stretch Left',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const StandingBicepsStretchLeft();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00.20',
                        ),
                        GymYogaWorkout(
                          workOutName: 'Standing Biceps Stretch Right',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const StandingBicepsStretchRight();
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
