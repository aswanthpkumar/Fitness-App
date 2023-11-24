import 'package:demo_project/pages/homeScreen/workouts/workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/yoga.dart';
import 'package:demo_project/widgets/homeScreen/dashboard.dart';
import 'package:flutter/material.dart';
import '../assets.dart';
import '../widgets/homeScreen/card_1.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 20),
        const Dashboard(),
        Row(
          children: [
            name(),
            profileImage1(),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            CardSection1(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) {
                      return const Gym();
                    },
                  ),
                );
              },
              img: card1gym,
              name: 'Workout',
            ),
            const SizedBox(width: 6),
            CardSection1(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) {
                      return const Yoga();
                    },
                  ),
                );
              },
              img: yoga,
              name: 'Yoga',
            )
          ],
        ),
      ],
    );
  }

  Widget profileImage1() {
    return Padding(
      padding: const EdgeInsets.only(left: 55, top: 20),
      child: CircleAvatar(
        radius: 80,
        backgroundImage: AssetImage(logo),
      ),
    );
  }

  Widget name() {
    return const Padding(
      padding: EdgeInsets.only(left: 10),
      child: Column(
        children: [
          Text(
            'Hi Aswanth',
            style: TextStyle(
              color: Colors.black,
              fontSize: 40,
            ),
          ),
          Text(
            'Lets check your activity',
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
