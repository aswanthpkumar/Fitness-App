import 'package:demo_project/assets.dart';
import 'package:demo_project/db/functions/db_functions.dart';
import 'package:demo_project/db/model/date_modal.dart';
import 'package:demo_project/home.dart';
import 'package:demo_project/main.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({super.key});
  

  @override
  State<LoginSignupScreen> createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignupScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwardController = TextEditingController();
  bool isMale = true;
  bool isSignupScreen = true;
  bool isRememberMe = false;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white54,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(backgroundImage), fit: BoxFit.fill),
              ),
              child: Container(
                padding: const EdgeInsets.only(top: 90, left: 20),
                color: const Color.fromARGB(255, 82, 103, 149).withOpacity(.85),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Welcome to ',
                        style: TextStyle(
                          fontSize: 25,
                          letterSpacing: 2,
                          color: Colors.yellow[700],
                        ),
                        children: [
                          TextSpan(
                            text: 'i FIT,',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.yellow[700],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Signup to Countinue',
                      style: TextStyle(letterSpacing: 1, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Main contianer for login and signUP
          Positioned(
            top: isSignupScreen ? 200 : 230,
            child: Container(
              height: isSignupScreen ? 380 : 250,
              padding: const EdgeInsets.all(20),
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
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignupScreen = false;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'LOGIN',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: !isSignupScreen
                                    ? Colors.black
                                    : Colors.grey,
                              ),
                            ),
                            if (!isSignupScreen)
                              Container(
                                margin: const EdgeInsets.only(top: 3),
                                height: 2,
                                width: 55,
                                color: Colors.orange,
                              ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignupScreen = true;
                          });
                        },
                      child: Column(
                        children: [
                          Text(
                            'SIGNIN',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color:
                                  isSignupScreen ? Colors.black : Colors.grey,
                            ),
                          ),
                          if (isSignupScreen)
                            Container(
                              margin: const EdgeInsets.only(top: 3),
                              height: 2,
                              width: 55,
                              color: Colors.orange,
                            ),
                        ],
                      ),
                       ),
                    ],
                  ),
                  if (isSignupScreen) buildSignUpSection(),
                  // if (!isSignupScreen) buildSignInSection(),
                ],
              ),
            ),
          ),
          // Trick to add the submit button
          Positioned(
            top: isSignupScreen ? 535 : 430,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                height: 90,
                width: 90,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(.3),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: const Offset(0, 1)),
                    ]),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.orange.shade200, Colors.red.shade400],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(.3),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: const Offset(0, 1)),
                      ]),
                  child: IconButton(
                    color: Colors.white,
                    icon: const Icon(Icons.arrow_forward),
                    onPressed: () {
                      addAction();
                      logInData(context);
                    //   final data = LoginModal(email: emailController.text,name: nameController.text,password: passwardController.text,);
                    //   final box=Boxes.getdata();
                    //   box.add(data);
                    //  data.save();
                    //  print(box);
                    //  emailController.clear();
                    //  nameController.clear();
                    //  passwardController.clear();
                      
                    },
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  // Container buildSignInSection() {
  //   return Container(
  //     margin: const EdgeInsets.only(top: 20),
  //     child: Column(
  //       children: [
  //         buildTextField(Icons.email_outlined, 'info@gmail.com', false, true),
  //         buildTextField(Icons.lock, '******', true, false),
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: [
  //             Row(
  //               children: [
  //                 Checkbox(
  //                     value: isRememberMe,
  //                     activeColor: Colors.grey[400],
  //                     onChanged: (value) {
  //                       setState(() {
  //                         isRememberMe = !isRememberMe;
  //                       });
  //                     }),
  //                 Text(
  //                   'Remember me',
  //                   style: TextStyle(
  //                     fontSize: 12,
  //                     color: Colors.grey.shade400,
  //                   ),
  //                 ),
  //               ],
  //             ),
  //             TextButton(
  //                 onPressed: () {},
  //                 child: Text(
  //                   'Forgot Passward?',
  //                   style: TextStyle(
  //                     fontSize: 12,
  //                     color: Colors.grey.shade400,
  //                   ),
  //                 ))
  //           ],
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Container buildSignUpSection() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          buildTextField(Icons.person, 'User Name', false, false,
              nameController),
          buildTextField(Icons.email_outlined, 'email', false, true,
              emailController),
          buildTextField(Icons.person, 'password', true, false,
              passwardController),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = true;
                    });
                  },
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        margin: const EdgeInsets.only(right: 8.0),
                        decoration: BoxDecoration(
                          color: isMale ? Colors.grey : Colors.transparent,
                          border: Border.all(
                            width: 1,
                            color: isMale ? Colors.transparent : Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(Icons.account_circle,
                            color: isMale ? Colors.white : Colors.grey[400]),
                      ),
                      Text(
                        'Male',
                        style: TextStyle(color: Colors.grey[400]),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 30),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        margin: const EdgeInsets.only(right: 8.0),
                        decoration: BoxDecoration(
                            color: isMale ? Colors.transparent : Colors.grey,
                            border: Border.all(
                              width: 1,
                              color: isMale ? Colors.grey : Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(15)),
                        child: Icon(Icons.account_circle,
                            color: isMale ? Colors.grey : Colors.white),
                      ),
                      Text(
                        'Female',
                        style: TextStyle(color: Colors.grey[400]),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 200,
            margin: const EdgeInsets.only(top: 20),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: "By pressing 'Submit' you agree to our ",
                  style: TextStyle(color: Colors.grey[400]),
                  children: const [
                    TextSpan(
                        // recognizer: ,
                        text: 'terms & conditions',
                        style: TextStyle(color: Colors.orange))
                  ],),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTextField(IconData icon, String hintText, bool isPassward,
      bool isEmail, controller) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextFormField(
        controller: controller,
        obscureText: isPassward,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
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
    final name = nameController.text.trim();
    final email = emailController.text.trim();
    final password = passwardController.text.trim();
    if (name.isEmpty || email.isEmpty || password.isEmpty) {
      return;
    }    
   ("$name$email$password");
    final login = LoginModal(name: name, password: password, email: email);
    addLogin(login);   
    (login); 
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (ctx1) => HomePage(),
      ),
    );
  
  }

  Future <void> logInData(BuildContext context)async{
    final sharedPrefs = await SharedPreferences.getInstance();
      await sharedPrefs.setBool(SAVE_VALUE, true);
  }
}
