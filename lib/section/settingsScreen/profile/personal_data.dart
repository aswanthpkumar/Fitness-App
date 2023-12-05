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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20, left: 15),
                    child: Text(
                      'Personal info',
                      style: TextStyle(fontSize: 65, color: Colors.grey),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.person_3_outlined,
                          size: 40,
                          color: Colors.blueGrey,
                        ),
                        const SizedBox(width: 25),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Age',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              data[index].age.toString(),
                              style: const TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.height,
                          size: 40,
                          color: Colors.blueGrey,
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Height',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              data[index].height.toString(),
                              style: const TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.line_weight,
                          size: 40,
                          color: Colors.blueGrey,
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Weight',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              data[index].weight.toString(),
                              style: const TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
