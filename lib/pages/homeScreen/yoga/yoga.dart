import 'package:demo_project/assets.dart';
import 'package:demo_project/home.dart';
import 'package:demo_project/pages/homeScreen/yoga/card1.dart';
import 'package:demo_project/pages/homeScreen/yoga/card2.dart';
import 'package:demo_project/pages/homeScreen/yoga/card3.dart';
import 'package:demo_project/pages/homeScreen/yoga/easeYogaforBeginners/easeYogaforBeignners.dart';
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
              Card_1(
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
              Card_1(
                name: 'Sun solutations\nflow',
                colors: Colors.amberAccent.shade100,
                ontap: () {},
              ),
            ],
          ),
          const SizedBox(height: 5),
          Card_2(
            colors: Colors.yellow.shade100,
            name: 'Kids yoga',
            ontap: () {},
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card_3(
                colors: Colors.yellow.shade300,
                name: 'Morning Yoga\nflow',
                ontap: () {},
              ),
              Card_3(
                colors: Colors.greenAccent.shade200,
                name: 'Evening Yoga\nflow',
                ontap: () {},
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card_3(
                colors: Colors.cyanAccent.shade100,
                name: 'Arms\nwokout',
                ontap: () {},
              ),
              Card_3(
                colors: Colors.yellowAccent.shade100,
                name: 'Beginner inner\nthigh toning',
                ontap: () {},
              )
            ],
          ),
          const SizedBox(height: 5),
          Card_2(
            colors: Colors.blueAccent.shade100,
            name: 'Leg workout',
            ontap: () {},
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card_3(
                colors: Colors.limeAccent.shade100,
                name: 'Only 4 moves\nfor abs',
                ontap: () {},
              ),
              Card_3(
                colors: Colors.yellowAccent.shade100,
                name: 'Beginner core\nworkout',
                ontap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
