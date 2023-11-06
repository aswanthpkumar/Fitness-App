import 'package:demo_project/assets.dart';
import 'package:demo_project/home.dart';
import 'package:demo_project/pages/homeScreen/workouts/section.dart';
import 'package:demo_project/pages/homeScreen/workouts/abs%20beginner/absbeginner.dart';
import 'package:demo_project/saparater.dart';
import 'package:flutter/material.dart';

class Gym extends StatelessWidget {
  Gym({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.grey,
                Colors.blueAccent,
              ]),
            ),
            child: Column(
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
                Stack(
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(background),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Container(
                        color: const Color.fromARGB(255, 82, 103, 149)
                            .withOpacity(.50),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Saparater(text: '7x4 Challange', size: 20),
                Section(img: insaneofsixpack, text: 'Full Body', ontap: () {}),
                Section(img: complexcore, text: 'Lower Body', ontap: () {}),
                const Saparater(text: 'Beginner', size: 20),
                Section(
                  img: chestarms,
                  text: 'Abs',
                  ontap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return const AbsBeginner();
                        },
                      ),
                    );
                  },
                ),
                Section(
                  img: complexlowerbody,
                  text: 'Chest',
                  ontap: () {},
                ),
                Section(
                  img: powerjumps,
                  text: 'Arm',
                  ontap: () {},
                ),
                Section(
                  img: amazingbutt,
                  text: 'Leg',
                  ontap: () {},
                ),
                Section(
                  img: upperbody,
                  text: 'Sholder and Back',
                  ontap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}