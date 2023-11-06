import 'package:demo_project/home.dart';
import 'package:demo_project/main.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'logIn/logInScreen.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  // once call cheyunath 'initstate'
  @override
  void initState() {
    // TODO: implement initState]
    checkLoggIn();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
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
        builder: (ctx) => const LoginSignUpScreen(),
      ),
    );
  }

  Future<void> checkLoggIn() async {
    final _sharedPrefs = await SharedPreferences.getInstance();
    final _userLog = _sharedPrefs.getBool(SAVE_VALUE);
    if (_userLog == null || _userLog == false) {
      gotoLogin();
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (ctx1) => HomePage(),
        ),
      );
    }
  }
}
