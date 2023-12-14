import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/homeScreen/workouts/workout.dart';
import 'package:demo_project/pages/homeScreen/yoga/kidsYoga/cobras.dart';
import 'package:demo_project/pages/homeScreen/yoga/kidsYoga/downward_facing_dog.dart';
import 'package:demo_project/pages/homeScreen/yoga/kidsYoga/locust_pose.dart';
import 'package:demo_project/pages/homeScreen/yoga/kidsYoga/seated_butterfly_stretch.dart';
import 'package:demo_project/pages/homeScreen/yoga/kidsYoga/standing_back_stretches.dart';
import 'package:demo_project/pages/homeScreen/yoga/kidsYoga/standing_crossover_toe_touches.dart';
import 'package:demo_project/pages/homeScreen/yoga/kidsYoga/torso_twist.dart';
import 'package:demo_project/pages/homeScreen/yoga/kidsYoga/warrior_li_left.dart';
import 'package:demo_project/pages/homeScreen/yoga/kidsYoga/warrior_li_right.dart';
import 'package:demo_project/pages/homeScreen/yoga/yoga.dart';
import 'package:demo_project/saparater.dart';
import 'package:flutter/material.dart';

class KidsYoga extends StatelessWidget {
  const KidsYoga({super.key});

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
                        const Saparater(text: '3 mins Beginner', size: 20.0),
                        GymYogaWorkout(
                          workOutName: 'Standing Back Stretches',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const StandingBackStretches();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00:20',
                        ),
                        GymYogaWorkout(
                          workOutName: 'Warrior Li Left',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const WarriorLiLeft();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00:20',
                        ),
                        GymYogaWorkout(
                          workOutName: 'Warrior Li Right',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const WarriorLiRight();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00:20',
                        ),
                        GymYogaWorkout(
                          workOutName: 'Standing Crossover Toe Touches',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const StandingCrossoverToeTouches();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00:20',
                        ),
                        GymYogaWorkout(
                          workOutName: 'Downward Facing Dog',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const DownwardFacinDogKids();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00:20',
                        ),
                        GymYogaWorkout(
                          workOutName: 'Torso Twist',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const TorsoTwist();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00:20',
                        ),
                        GymYogaWorkout(
                          workOutName: 'Locust Pose',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const LocustPose();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00.20',
                        ),
                        GymYogaWorkout(
                          workOutName: 'Seated Butterfly Stretch',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const SeatedButterflyStretch();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00:20',
                        ),
                        GymYogaWorkout(
                          workOutName: 'Cobras',
                          workOutImage: powerjumps,
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return const Cobras();
                                },
                              ),
                            );
                          },
                          workOutTIme: '00:40',
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
