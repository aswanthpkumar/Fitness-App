
// ignore_for_file: depend_on_referenced_packages

import 'package:hive/hive.dart';
 part 'date_modal.g.dart';


@HiveType(typeId: 1)
class LoginModal extends HiveObject{
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
