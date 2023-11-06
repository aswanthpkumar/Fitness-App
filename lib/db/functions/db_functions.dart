import 'dart:developer';

import 'package:demo_project/db/model/date_modal.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

ValueNotifier<List<LoginModal>> loginListNotifier = ValueNotifier([]);
// add cheyan
Future<void> addLogin(LoginModal value) async {

  final loginDB = await Hive.openBox<LoginModal>('login_db');
  await loginDB.add(value);
  loginListNotifier.value.add(value);
  loginListNotifier.notifyListeners(); 
  print(value.toString());
}
Future<void> getAllData()async{
  final loginDB = await Hive.openBox<LoginModal>('login_db');
  loginListNotifier.value.clear();
  loginListNotifier.value.addAll(loginDB.values);
  loginListNotifier.notifyListeners();
   
} 
