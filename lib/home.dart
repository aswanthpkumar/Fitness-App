import 'package:demo_project/screen/screen_home.dart';
import 'package:demo_project/screen/screen_settings.dart';
import 'package:demo_project/screen/screen_food.dart';
import 'package:demo_project/bottomNavigation.dart';
import 'package:demo_project/section/settingsScreen/profile/profile.dart';
import 'package:flutter/material.dart';

import 'db/functions/db_functions.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);
  

  final _pages =  [
    const ScreenHome(),
    ScreenFood(),
    const ScreenSettings(),
  ];

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Colors.grey[350],
      bottomNavigationBar: const BottomNavigaion(),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Fitness App'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontStyle: FontStyle.italic,
          fontSize: 40,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(90),
            bottomLeft: Radius.circular(90),
          ),
        ),
      ),

      // DecoratedBox(
      //   decoration:  BoxDecoration(
      //     // image for scaffold
      //     //  image: DecorationImage(image: AssetImage(background),fit: BoxFit.fill)
      //   ),
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: selectedIndexNotifier,
          builder: (BuildContext context, int updatedIndex, _) {
            return _pages[updatedIndex];
          },
        ),
      ),
    );
  }
}
