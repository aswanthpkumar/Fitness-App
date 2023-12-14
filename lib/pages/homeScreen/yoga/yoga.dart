import 'package:demo_project/assets.dart';
import 'package:demo_project/home/home.dart';
import 'package:demo_project/pages/homeScreen/yoga/armsWokout/arms_workout.dart';
import 'package:demo_project/pages/homeScreen/yoga/beginnerInnerThighToning/beginner_innert_thigh_toning.dart';
import 'package:demo_project/pages/homeScreen/yoga/card_1.dart';
import 'package:demo_project/pages/homeScreen/yoga/card_2.dart';
import 'package:demo_project/pages/homeScreen/yoga/card_3.dart';
import 'package:demo_project/pages/homeScreen/yoga/easeYogaforBeginners/ease_yoga_for_beignners.dart';
import 'package:demo_project/pages/homeScreen/yoga/eveningYogaFlow/evening_yoga_flow.dart';
import 'package:demo_project/pages/homeScreen/yoga/kidsYoga/kids_yoga.dart';
import 'package:demo_project/pages/homeScreen/yoga/legWorkout/leg_workout.dart';
import 'package:demo_project/pages/homeScreen/yoga/morningYogaFlow/morning_yoga_flow.dart';
import 'package:demo_project/pages/homeScreen/yoga/only4MovesforAbs/only_4_movesfor_abs.dart';
import 'package:demo_project/pages/homeScreen/yoga/sunSolutationsFlow/sun_solutations_flow.dart';
import 'package:flutter/material.dart';

class Yoga extends StatelessWidget {
  const Yoga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return HomePage();
                        },
                      ),
                    );
                  },
                  icon: const Icon(Icons.arrow_back)),
              Container(
                margin: const EdgeInsets.all(8),
                child: const Text(
                  'Getting Started',
                  style: TextStyle(fontSize: 35),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                child: const Text(
                  '10 workouts',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                child: Text(
                  yogapara,
                  style: const TextStyle(
                    fontSize: 15,
                    wordSpacing: 2,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card1(
                colors: Colors.amber.shade100,
                name: 'Ease Yoga for\nbeginners',
                ontap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) {
                        return const EaseYogaforBeginners();
                      },
                    ),
                  );
                },
              ),
              Card1(
                name: 'Sun solutations\nflow',
                colors: Colors.amberAccent.shade100,
                ontap: () {Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) {
                        return const SunSolutationsFlow();
                      },
                    ),
                  );},
              ),
            ],
          ),
          const SizedBox(height: 5),
          Card2(
            colors: Colors.yellow.shade100,
            name: 'Kids yoga',
            ontap: () {Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) {
                        return const KidsYoga();
                      },
                    ),
                  );},
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card3(
                colors: Colors.yellow.shade300,
                name: 'Morning Yoga\nflow',
                ontap: () {Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) {
                        return const MorningYogaFlow();
                      },
                    ),
                  );},
              ),
              Card3(
                colors: Colors.greenAccent.shade200,
                name: 'Evening Yoga\nflow',
                ontap: () {Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) {
                        return const EveningYogaFlow();
                      },
                    ),
                  );},
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card3(
                colors: Colors.cyanAccent.shade100,
                name: 'Arms\nwokout',
                ontap: () {Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) {
                        return const ArmsWorkout();
                      },
                    ),
                  );},
              ),
              Card3(
                colors: Colors.yellowAccent.shade100,
                name: 'Beginner inner\nthigh toning',
                ontap: () {Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) {
                        return const BeginnerInnerThighToning();
                      },
                    ),
                  );},
              )
            ],
          ),
          const SizedBox(height: 5),
          Card2(
            colors: Colors.blueAccent.shade100,
            name: 'Leg workout',
            ontap: () {Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) {
                        return const LegWorkout();
                      },
                    ),
                  );},
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card3(
                colors: Colors.limeAccent.shade100,
                name: 'Only 4 moves\nfor abs',
                ontap: () {Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) {
                        return const Only4MovesAbs();
                      },
                    ),
                  );},
              ),
              Card3(
                colors: Colors.yellowAccent.shade100,
                name: 'Beginner core\nworkout',
                ontap: () {Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) {
                        return const BeginnerInnerThighToning();
                      },
                    ),
                  );},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
