import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/workout.dart';
import 'package:demo_project/pages/homeScreen/yoga/easeYogaforBeginners/cat_cow_pose.dart';
import 'package:demo_project/pages/homeScreen/yoga/easeYogaforBeginners/child_pose.dart';
import 'package:demo_project/pages/homeScreen/yoga/easeYogaforBeginners/counter_clockwise_sholder_rolls.dart';
import 'package:demo_project/pages/homeScreen/yoga/easeYogaforBeginners/seated_side_bend_left.dart';
import 'package:demo_project/pages/homeScreen/yoga/easeYogaforBeginners/seated_side_bend_right.dart';
import 'package:demo_project/pages/homeScreen/yoga/easeYogaforBeginners/seated_spinal_twist_left.dart';
import 'package:demo_project/pages/homeScreen/yoga/easeYogaforBeginners/seated_spinal_twist_right.dart';
import 'package:demo_project/pages/homeScreen/yoga/easeYogaforBeginners/side_to_side_turns.dart';
import 'package:demo_project/pages/homeScreen/yoga/easeYogaforBeginners/upand_down_nods.dart';
import 'package:demo_project/pages/homeScreen/yoga/easeYogaforBeginners/walkthe_dog.dart';
import 'package:demo_project/pages/homeScreen/yoga/easeYogaforBeginners/clock_wise_sholder_rolls.dart';
import 'package:demo_project/pages/homeScreen/yoga/yoga.dart';
import 'package:demo_project/saparater.dart';
import 'package:flutter/material.dart';

class EaseYogaforBeginners extends StatelessWidget {
  const EaseYogaforBeginners({super.key});

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
                        const Saparater(text: '16 mins Beginner', size: 20),
                        GymYogaWorkout(
                          workOutName: 'Clockwise Sholder Rolls',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const ClcockwiseSholderRolls();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00:20',
                        ),
                        GymYogaWorkout(
                          workOutName: 'Counterclockwise Sholder Rolls',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const CounterclockwiseSholderRolls();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00:20',
                        ),
                        GymYogaWorkout(
                          workOutName: 'Side-to-side Turns',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const SidetosideTurns();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00:20',
                        ),
                        GymYogaWorkout(
                          workOutName: 'Up and Down Nods',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const UpandDownNods();
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
                          workOutTIme: '00.20',
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
                          workOutTIme: '00:40',
                        ),
                        GymYogaWorkout(
                          workOutName: "Child's Pose",
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
                        ),
                        GymYogaWorkout(
                          workOutName: 'Walk The Dog',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const WalkTheDog();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00.30',
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
