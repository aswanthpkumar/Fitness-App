import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../../db/model/date_modal.dart';
import 'package:demo_project/db/boxes/boxes.dart';

class PersonalData extends StatefulWidget {
  const PersonalData({super.key});

  @override
  State<PersonalData> createState() => _PersonalDataState();
}

class _PersonalDataState extends State<PersonalData> {
  Box? box2;

  @override
  void initState() {
    super.initState();
    OpenBox();
  }

  // ignore: non_constant_identifier_names
  void OpenBox() async {
    box2 = await Hive.openBox<DataModel>('data_db');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder<Box<DataModel>>(
        valueListenable: Boxes1.getData().listenable(),
        builder: (context, box, _) {
          var data = box.values.toList().cast<DataModel>();
          return ListView.builder(
            itemCount: box.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Text('Age: ${data[index].age.toString()}'),
                  Text('Height: ${data[index].height.toString()}'),
                  Text('Weight: ${data[index].weight.toString()}'),
                ],
              );
            },
          );
        },
      ),
    );
  }
}