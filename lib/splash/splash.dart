import 'package:demo_project/home/home.dart';
import 'package:demo_project/main.dart';

import 'package:demo_project/pages/ui_pages/page_1.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  // once call cheyunath 'initstate'
  @override
  void initState() {
    
    checkLoggIn();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('splash'),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> gotoLogin() async {
    await Future.delayed(
      const Duration(seconds: 1),
    );
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (ctx) => const Page1(),
      ),
    );
  }

  Future<void> checkLoggIn() async {
    final sharedPrefs = await SharedPreferences.getInstance();
    final userLog = sharedPrefs.getBool(saveValue);
    if (userLog == null || userLog == false) {
      gotoLogin();
    } else {
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (ctx1) =>  HomePage(),
        ),
      );
    }
  }
}
