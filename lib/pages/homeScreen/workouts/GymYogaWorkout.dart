import 'package:flutter/material.dart';

class GymYogaWorkout extends StatelessWidget {
  final VoidCallback onTap;
  final workOutName;
  final workOutImage;
  final workOutTIme;
  final space;

  const GymYogaWorkout({
    super.key,
    required this.workOutName,
    required this.workOutImage,
    required this.onTap,
    required this.workOutTIme,
    required this.space,
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  padding:  EdgeInsets.only(left: space),
                  child: Image(
                    alignment: Alignment.centerRight,
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
