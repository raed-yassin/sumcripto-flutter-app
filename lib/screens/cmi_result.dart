import 'package:flutter/material.dart';

class CMIResults extends StatelessWidget {
  final int age;
  final double result;
  final bool gender;

  CMIResults({
    super.key,
    required this.age,
    required this.gender,
    required this.result,
  });

  Color mainColor = Color.fromARGB(255, 86, 137, 15);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        centerTitle: true,
        // leading: Container(child: Icon(Icons.menu)),
        title: Container(
          alignment: Alignment.center,
          child: Text("BMI Result"),
        ),
        // actions: [
        //   IconButton(onPressed: onPressed, icon: Icon(Icons.search)),
        //   IconButton(onPressed: onPressed, icon: Icon(Icons.notifications)),
        // ],
      ),
      body: Container(
        color: Colors.black,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Result: $result",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 40,
              ),
            ),
            SizedBox(height: 50),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Gender: ",
                  style: TextStyle(
                    color: mainColor,
                    fontWeight: FontWeight.w900,
                    fontSize: 40,
                  ),
                ),
                Text(
                  " ${gender ? "Male" : "FeMale"}",
                  style: TextStyle(
                    color: mainColor,
                    fontWeight: FontWeight.w900,
                    fontSize: 40,
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Age: ",
                  style: TextStyle(
                    color: mainColor,
                    fontWeight: FontWeight.w900,
                    fontSize: 40,
                  ),
                ),
                Text(
                  " $age",
                  style: TextStyle(
                    color: mainColor,
                    fontWeight: FontWeight.w900,
                    fontSize: 40,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
