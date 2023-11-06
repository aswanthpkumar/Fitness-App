import 'package:demo_project/boxes/boxes.dart';
import 'package:demo_project/db/functions/db_functions.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../../db/model/date_modal.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Box? box1;

  @override
  void initState() {
    super.initState();
    OpenBox();
  }

  void OpenBox() async {
    box1 = await Hive.openBox<LoginModal>('login_db');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder<Box<LoginModal>>(
        valueListenable: Boxes.getdata().listenable(),
        builder: (context, box, _) {
          var data = box.values.toList().cast<LoginModal>();
          return ListView.builder(
            itemCount: box.length,
            itemBuilder: (context, index) {
              return Container(
                child: Column(
                  children: [
                    Text('Name: ${data[index].name.toString()}'),
                    Text('Email: ${data[index].email.toString()}'),
                    Text('Password: ${data[index].password.toString()}'),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
