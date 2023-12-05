import 'package:demo_project/db/boxes/boxes.dart';
import 'package:demo_project/db/model/date_modal.dart';
import 'package:demo_project/pages/homeScreen/workouts/workouts.dart';
import 'package:demo_project/pages/homeScreen/yoga/yoga.dart';
import 'package:demo_project/widgets/homeScreen/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../assets.dart';
import '../widgets/homeScreen/card_1.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  Box? box3;

  @override
  void initState() {
    super.initState();
    OpenBox();
  }

  // ignore: non_constant_identifier_names
  void OpenBox() async {
    box3 = await Hive.openBox<NameModel>('name_db');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box<NameModel>>(
      valueListenable: Boxes2.getData().listenable(),
      builder: (context, box, _) {
        var data = box.values.toList().cast<NameModel>();
        return ListView.builder(
          itemCount: box.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Hi ${data[index].username.toString()}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 40),
                        ),
                        const Text(
                          'Lets check your activity',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    profileImage1()
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
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
                const SizedBox(
                  height: 15,
                ),
                const Dashboard()
              ],
            );
          },
        );
      },
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
}
