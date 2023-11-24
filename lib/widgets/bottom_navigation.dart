import 'package:demo_project/home/home.dart';
import 'package:flutter/material.dart';

class BottomNavigaion extends StatelessWidget {
  const BottomNavigaion({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: HomePage.selectedIndexNotifier,
      builder: (BuildContext ctx, int updatedIndex, Widget? _){
        return BottomNavigationBar(
        currentIndex: updatedIndex,
        onTap: (newIndex){
          HomePage.selectedIndexNotifier.value = newIndex;
        },
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank),
            label: 'Food',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      );
      },
    );
  }
}
