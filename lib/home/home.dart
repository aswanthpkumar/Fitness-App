import 'package:demo_project/screen/screen_home.dart';
import 'package:demo_project/screen/screen_settings.dart';
import 'package:demo_project/screen/screen_food.dart';
import 'package:demo_project/widgets/bottom_navigation.dart';

import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
   const HomePage({super.key});
  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pages =  [
    const ScreenHome(),
    const ScreenFood(),
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
      //     image for scaffold
      //      image: DecorationImage(image: AssetImage(background),fit: BoxFit.fill)
      //   ),
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: HomePage.selectedIndexNotifier,
          builder: (BuildContext context, int updatedIndex, _) {
            return _pages[updatedIndex];
          },
        ),
      ),
    );
    

  }
}
