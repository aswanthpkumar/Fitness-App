import 'package:demo_project/pages/homeScreen/workouts/abs/abs.dart';
import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  final String coverimage;
  final String heading;
  final String para1;
  final String para2;
  final String pagecount;
  final VoidCallback ontapNext;
  final VoidCallback ontapPrevious;
  const Section(
      {super.key,
      required this.coverimage,
      required this.heading,
      required this.para1,
      required this.para2,
      required this.pagecount,
      required this.ontapNext,
      required this.ontapPrevious});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(coverimage),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Container(
                    color: const Color.fromARGB(255, 82, 103, 149)
                        .withOpacity(.50),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                heading,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
            const SizedBox(height: 50),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                para1,
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                para2,
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: ontapPrevious,
                    child: const Text(
                      'Previous',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Text(
                    pagecount,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: ontapNext,
                    child: const Text(
                      'Next',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return const Abs();
                        },
                      ),
                    );
                    },
                    child: const Card(
                      shape: StadiumBorder(
                        side: BorderSide(color: Colors.blue, width: 2),
                      ),
                      color: Colors.blue,
                      child: Text(
                        ' Close ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
