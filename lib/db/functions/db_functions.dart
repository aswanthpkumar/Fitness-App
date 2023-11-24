



// ignore_for_file: invalid_use_of_protected_member

import 'package:demo_project/db/model/date_modal.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

ValueNotifier<List<LoginModal>> loginListNotifier = ValueNotifier([]);
// add cheyan
Future<void> addLogin(LoginModal value) async {

  final loginDB = await Hive.openBox<LoginModal>('login_db');
  await loginDB.add(value);
  loginListNotifier.value.add(value);
  // ignore: invalid_use_of_visible_for_testing_member
  loginListNotifier.notifyListeners(); 
  (value.toString());
}

ValueNotifier<List<DataModel>> dataListNotifier = ValueNotifier([]);
// add cheyan
Future<void> addData(DataModel values) async {

  final dataDB = await Hive.openBox<DataModel>('data_db');
  await dataDB.add(values);
  dataListNotifier.value.add(values);
  // ignore: invalid_use_of_visible_for_testing_member
  dataListNotifier.notifyListeners(); 
  (values.toString());
}


Future<void> getAllData()async{
  final loginDB = await Hive.openBox<LoginModal>('login_db');
  loginListNotifier.value.clear();
  loginListNotifier.value.addAll(loginDB.values);
  // ignore: invalid_use_of_visible_for_testing_member
  loginListNotifier.notifyListeners();
   
} 