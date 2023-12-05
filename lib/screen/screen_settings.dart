import 'package:demo_project/assets.dart';
import 'package:demo_project/section/settingsScreen/profile/personal_data.dart';
import 'package:demo_project/section/settingsScreen/profile/profile.dart';
import 'package:flutter/material.dart';

class ScreenSettings extends StatelessWidget {
  const ScreenSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              margin: const EdgeInsets.only(top: 1),
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(settingspageimage),
                  fit: BoxFit.fill,
                ),
              ),
              child: Container(
                color: Colors.blue.withOpacity(.15),
              ),
            ),
          ),
          Positioned(
            top: 200,
            child: Container(
              height: 380,
              width: MediaQuery.of(context).size.width - 40,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 15,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) {
                              return const Profile();
                            },
                          ),
                        );
                      },
                      child: const Row(
                        children: [
                          Icon(Icons.person_2),
                          SizedBox(width: 20),
                          Text(
                            'Profile',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 200),
                          Icon(
                            Icons.arrow_forward_ios,
                            weight: 50,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) {
                              return const PersonalData();
                            },
                          ),
                        );
                      },
                      child: const Row(
                        children: [
                          Icon(Icons.person_4_outlined),
                          SizedBox(width: 20),
                          Text(
                            'Personal info',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 98),
                          Icon(
                            Icons.arrow_forward_ios,
                            weight: 50,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
