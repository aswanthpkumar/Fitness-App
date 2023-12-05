import 'package:demo_project/assets.dart';
import 'package:demo_project/db/model/date_modal.dart';
import 'package:demo_project/pages/ui_pages/height_weight_age.dart';
import 'package:flutter/material.dart';
import 'package:demo_project/db/functions/db_functions.dart';
class Name extends StatefulWidget {
  const Name({super.key});

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              margin: const EdgeInsets.only(top: 1),
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(settingspageimage),
                  fit: BoxFit.fill,
                ),
              ),
              child: Container(
                color: Colors.blue.withOpacity(.15),
              ),
            ),
          ),
          Positioned(
            top: 250,
            child: Container(
              height: 280,
              width: MediaQuery.of(context).size.width - 40,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 15,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, right: 30, left: 30),
                child: Column(
                  children: [
                    const Text(
                      'Enter your Name',
                      style: TextStyle(fontSize: 40),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    buildTextField('Name', nameController),
                    const SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: TextButton(
                        onPressed: () {
                          addName1();
                        },
                        child: const Text(
                          'Submit',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTextField(String hintText, controller) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextFormField(
        keyboardType: TextInputType.number,
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black87),
            borderRadius: BorderRadius.all(Radius.circular(35.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black87),
            borderRadius: BorderRadius.all(Radius.circular(35.0)),
          ),
          contentPadding: const EdgeInsets.all(10),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 14, color: Colors.grey[400]),
        ),
      ),
    );
  }

  Future<void> addName1() async {
    final name = nameController.text.trim();
    if (name.isEmpty) {
      return;
    }
    (name);
    final namedata1 = NameModel(username: name);
    nameData(namedata1);
    namedata1;

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (ctx1) => const HeightWeightAge(),
      ),
    );
  }
}
