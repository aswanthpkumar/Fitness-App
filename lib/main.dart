import 'package:demo_project/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'db/model/date_modal.dart';

const saveValue = 'UserLoggedIn';
const dataValue = 'Data';

Future<void> main(List<String> args) async {
  await Hive.initFlutter();

  if (!Hive.isAdapterRegistered(LoginModalAdapter().typeId)) {
    Hive.registerAdapter(LoginModalAdapter());
    await Hive.openBox<LoginModal>('login_db');
  }

  if (!Hive.isAdapterRegistered(DataModelAdapter().typeId)) {
    Hive.registerAdapter(DataModelAdapter());
    await Hive.openBox<DataModel>('data_db');
  }

  if (!Hive.isAdapterRegistered(NameModelAdapter().typeId)) {
    Hive.registerAdapter(NameModelAdapter());
    await Hive.openBox<NameModel>('name_db');
  }

  runApp(const MyApp());
}

// int? isviewed;
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   var directory = await getApplicationDocumentsDirectory();

//   Hive.init(directory.path);

//   Hive.registerAdapter(LoginModalAdapter());
//   await Hive.openBox<LoginModal>('login_db');

//   Hive.registerAdapter(DataModelAdapter());
//   await Hive.openBox<DataModel>('data_db');

//   SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
//     statusBarColor: Colors.transparent,
//   ));
//   // SharedPreferences prefs = await SharedPreferences.getInstance();
//   // isviewed = prefs.getInt('UserLoggedIn');

//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ScreenSplash(),
    );
  }
}
