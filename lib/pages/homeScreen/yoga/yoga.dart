import 'package:demo_project/assets.dart';
import 'package:demo_project/home.dart';
import 'package:demo_project/pages/homeScreen/yoga/armsWokout/armsWorkout.dart';
import 'package:demo_project/pages/homeScreen/yoga/beginnerCoreWorkout/beginnerInnerThighToning.dart';
import 'package:demo_project/pages/homeScreen/yoga/card1.dart';
import 'package:demo_project/pages/homeScreen/yoga/card2.dart';
import 'package:demo_project/pages/homeScreen/yoga/card3.dart';
import 'package:demo_project/pages/homeScreen/yoga/easeYogaforBeginners/easeYogaforBeignners.dart';
import 'package:demo_project/pages/homeScreen/yoga/eveningYogaFlow/eveningYogaFlow.dart';
import 'package:demo_project/pages/homeScreen/yoga/kidsYoga/kidsYoga.dart';
import 'package:demo_project/pages/homeScreen/yoga/legWorkout/legWorkout.dart';
import 'package:demo_project/pages/homeScreen/yoga/morningYogaFlow/morningYogaFlow.dart';
import 'package:demo_project/pages/homeScreen/yoga/only4MovesforAbs/only4MovesforAbs.dart';
import 'package:demo_project/pages/homeScreen/yoga/sunSolutationsFlow/sunSolutationsFlow.dart';
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
                        return const Sun_Solutations_Flow();
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
                        return const Kids_Yoga();
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
                        return const Morning_Yoga_Flow();
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
                        return const Evening_Yoga_Flow();
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
                        return const Only_4_Moves_Abs();
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
