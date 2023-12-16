import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/workout.dart';
import 'package:demo_project/pages/homeScreen/yoga/eveningYogaFlow/bridge.dart';
import 'package:demo_project/pages/homeScreen/yoga/eveningYogaFlow/easy_butterfly_pose.dart';
import 'package:demo_project/pages/homeScreen/yoga/eveningYogaFlow/easy_splits_forward_fold.dart';
import 'package:demo_project/pages/homeScreen/yoga/eveningYogaFlow/plough_pose.dart';
import 'package:demo_project/pages/homeScreen/yoga/eveningYogaFlow/seated_side_bend_left.dart';
import 'package:demo_project/pages/homeScreen/yoga/eveningYogaFlow/seated_side_bend_right.dart';
import 'package:demo_project/pages/homeScreen/yoga/eveningYogaFlow/seated_spinal_twist_left.dart';
import 'package:demo_project/pages/homeScreen/yoga/eveningYogaFlow/seated_spinal_twist_right.dart';
import 'package:demo_project/pages/homeScreen/yoga/eveningYogaFlow/shoulder_shrugs.dart';
import 'package:demo_project/pages/homeScreen/yoga/yoga.dart';
import 'package:demo_project/saparater.dart';
import 'package:flutter/material.dart';

class EveningYogaFlow extends StatelessWidget {
  const EveningYogaFlow({super.key});

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
                        const Saparater(text: '3 mins ', size: 20),
                        GymYogaWorkout(
                          workOutName: 'Shoulder Shrugs',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const ShoulderShrugs();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00:20',
                        ),
                        GymYogaWorkout(
                          workOutName: 'Seated Spinal Twist Left',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const SeatedSpinalTwistLeft();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00:20',
                        ),
                        GymYogaWorkout(
                          workOutName: 'Seated Spinal Twist Right',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const SeatedSpinalTwistRight();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00:20',
                        ),
                        GymYogaWorkout(
                          workOutName: 'Seated Side Bend Left',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const SeatedSideBendLeft();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00:20',
                        ),
                        GymYogaWorkout(
                          workOutName: 'Seated Side Bend Right',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const SeatedSideBendRight();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00:20',
                        ),
                        GymYogaWorkout(
                          workOutName: 'Easy Splita Forward Fold',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const EasySplitsForwardFold();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00.20',
                        ),
                        GymYogaWorkout(
                          workOutName: 'Easy Buttterfly Pose',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const EasyButterflyPose();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00:20',
                        ),
                        GymYogaWorkout(
                          workOutName: 'Bridge',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const Bridge();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00:40',
                        ),
                        GymYogaWorkout(
                          workOutName: "Plough Pose",
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const PloughPose();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00:30',
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
