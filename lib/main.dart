import 'package:demo_project/splash.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'db/model/date_modal.dart';

const SAVE_VALUE= 'UserLoggedIn';

Future<void> main(List<String> args)async {
  await Hive.initFlutter();
if(!Hive.isAdapterRegistered(LoginModalAdapter().typeId)){
Hive.registerAdapter(LoginModalAdapter());
  await Hive.openBox<LoginModal>('login_db');
}
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo Project',
       theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ScreenSplash(),
    );
  }
}


