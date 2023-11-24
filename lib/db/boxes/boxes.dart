import 'package:demo_project/db/model/date_modal.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Boxes{
  static Box<LoginModal>getdata()=>Hive.box<LoginModal>('login_db');
}
class Boxes1{
   static Box<DataModel>getData()=>Hive.box<DataModel>('data_db');
}