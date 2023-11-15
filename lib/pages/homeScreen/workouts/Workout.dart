import 'package:flutter/material.dart';

class GymYogaWorkout extends StatelessWidget {
  final VoidCallback onTap;
  final String workOutName;
  final String workOutImage;
  final String workOutTIme;

  const GymYogaWorkout({
    super.key,
    required this.workOutName,
    required this.workOutImage,
    required this.onTap,
    required this.workOutTIme,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Card(
            margin: const EdgeInsets.only(top: 25),
            shape: const StadiumBorder(
              side: BorderSide(color: Colors.blue, width: 2),
            ),
            color: Colors.greenAccent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          workOutName,
                          style: const TextStyle(fontSize: 20),
                        ),
                        Text(
                          workOutTIme,
                          style: const TextStyle(fontSize: 10),
                        ),
                      ],
                    )),
                Padding(
                  padding:  EdgeInsets.only(right: 25),
                  child: Image(
                    alignment: Alignment.center,
                    height: 100,
                    width: 100,
                    image: AssetImage(
                      workOutImage,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
