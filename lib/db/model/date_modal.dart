// ignore_for_file: depend_on_referenced_packages

import 'package:hive/hive.dart';
part 'date_modal.g.dart';

@HiveType(typeId: 1)
class LoginModal extends HiveObject {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String email;
  @HiveField(2)
  final String password;

  LoginModal({
    required this.name,
    required this.password,
    required this.email,
  });
}

@HiveType(typeId: 2)
class DataModel extends HiveObject {
  @HiveField(0)
  final String age;
  @HiveField(1)
  final String height;
  @HiveField(2)
  final String weight;
  DataModel({
    required this.age,
    required this.height,
    required this.weight,
  });
}

@HiveType(typeId: 3)
class NameModel extends HiveObject {
  @HiveField(0)
  final String username;
  NameModel({required this.username});
}
