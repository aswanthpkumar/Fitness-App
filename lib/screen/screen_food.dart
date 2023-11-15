import 'package:demo_project/assets.dart';
import 'package:demo_project/pages/foodScreen/breakfast.dart';
import 'package:demo_project/pages/foodScreen/dinner.dart';
import 'package:demo_project/pages/foodScreen/lunch.dart';
import 'package:demo_project/pages/foodScreen/salad.dart';
import 'package:demo_project/pages/foodScreen/snacks.dart';
import 'package:demo_project/pages/foodScreen/soup.dart';
import 'package:demo_project/pages/foodScreen/sugarfree.dart';
import 'package:demo_project/pages/foodScreen/vegitarian.dart';
import 'package:demo_project/widgets/FoodScreen/card.dart';
import 'package:flutter/material.dart';

class ScreenFood extends StatelessWidget {
  const ScreenFood({super.key});

  // Widget thinDivider = const Divider(
  //   thickness: 5,
  //   color: Color.fromARGB(255, 180, 176, 176),
  // );

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                'Food',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Text(
                'Categories',
                style: TextStyle(fontSize: 15),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FoodCategory(
                  meals: 'BreakFast',
                  img: breakfast,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return const BreakFast();
                        },
                      ),
                    );
                  }, color: Colors.amber.shade100,
                ),
                FoodCategory(
                  meals: 'Lunch',
                  img: lunch,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return const Lunch();
                        },
                      ),
                    );
                  }, color: Colors.tealAccent.shade100
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FoodCategory(
                  meals: 'Scacks',
                  img: snacks,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return const Snacks();
                        },
                      ),
                    );
                  }, color: Colors.lightBlueAccent.shade100,
                ),
                FoodCategory(
                  meals: 'Sugarfree',
                  img: sugarfree,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return const Sugarfree();
                        },
                      ),
                    );
                  }, color: Colors.grey.shade100,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FoodCategory(
                  meals: 'Soup',
                  img: soup,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return const Soup();
                        },
                      ),
                    );
                  }, color: Colors.greenAccent.shade200,
                ),
                FoodCategory(
                  meals: 'Vegitarian',
                  img: veg,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return const Vegetarian();
                        },
                      ),
                    );
                  }, color: Colors.cyanAccent.shade100,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FoodCategory(
                  meals: 'Salad',
                  img: salad,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return const Salad();
                        },
                      ),
                    );
                  }, color: Colors.blueAccent.shade100,
                ),
                FoodCategory(
                  meals: 'Dinner',
                  img: dinner,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return const Dinner();
                        },
                      ),
                    );
                  }, color: Colors.pinkAccent.shade100,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
