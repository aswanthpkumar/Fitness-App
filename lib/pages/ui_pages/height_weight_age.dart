import 'package:demo_project/assets.dart';
import 'package:demo_project/db/functions/db_functions.dart';
import 'package:demo_project/db/model/date_modal.dart';
import 'package:demo_project/pages/logIn/login_screen.dart';
import 'package:flutter/material.dart';

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
                  image: AssetImage(heigth),
                  fit: BoxFit.fill,
                ),
              ),
              child: Container(
                color: Colors.blue.withOpacity(.15),
              ),
            ),
          ),
          Positioned(
            top: 200,
            child: Container(
              height: 380,
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
                padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Age',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    buildTextField(
                        Icons.person_add_alt_1, 'age', ageController),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Height', style: TextStyle(fontSize: 20)),
                    const SizedBox(
                      height: 10,
                    ),
                    buildTextField(Icons.height, 'height', heightController),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Weight', style: TextStyle(fontSize: 20)),
                    const SizedBox(
                      height: 10,
                    ),
                    buildTextField(Icons.monitor_weight_outlined, 'weight',
                        weightController),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: TextButton(
                        onPressed: () {
                          addAction();
                          // personalData(context);
                        },
                        child: const Text('Submit',
                            style: TextStyle(fontSize: 20)),
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
  //  Future<void> personalData(BuildContext context) async {
  //   final sharedPrefs = await SharedPreferences.getInstance();
  //   await sharedPrefs.setBool(dataValue, true);
  // }
}
