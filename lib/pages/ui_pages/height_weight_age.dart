import 'package:demo_project/db/functions/db_functions.dart';
import 'package:demo_project/db/model/date_modal.dart';
import 'package:demo_project/pages/logIn/login_screen.dart';
import 'package:demo_project/main.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HeightWeightAge extends StatefulWidget {
  const HeightWeightAge({super.key});

  @override
  State<HeightWeightAge> createState() => _HeightWeightAgeState();
}

class _HeightWeightAgeState extends State<HeightWeightAge> {
  final heightController = TextEditingController();
  final weightController = TextEditingController();
  final ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Age'),
                buildTextField(Icons.person_add_alt_1, 'age', ageController),
                const Text('Height'),
                buildTextField(Icons.height, 'height', heightController),
                const Text('Weight'),
                buildTextField(
                    Icons.monitor_weight_outlined, 'weight', weightController),
                Center(
                  child: TextButton(
                    onPressed: () {
                      addAction();
                      personalData(context);
                    },
                    child: const Text('Submit'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTextField(IconData icon, String hintText, controller) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextFormField(
        keyboardType: TextInputType.number,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Colors.grey[400],
          ),
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

  Future<void> addAction() async {
    final age = ageController.text.trim();
    final height = heightController.text.trim();
    final weight = weightController.text.trim();
    if (age.isEmpty || height.isEmpty || weight.isEmpty) {
      return;
    } 
  ("$age$height$weight");
    final logdata = DataModel(
      age: age,
      height: height,
      weight: weight,
    );
    addData(logdata);
    (logdata);
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (ctx1) => const LoginSignupScreen(),
        ),
      ); 
  }
   Future<void> personalData(BuildContext context) async {
    final sharedPrefs = await SharedPreferences.getInstance();
    await sharedPrefs.setBool(dataValue, true);
  }
}
