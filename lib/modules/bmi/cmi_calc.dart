import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/bmi/cmi_result.dart';

class CMI extends StatefulWidget {
  const CMI({super.key});

  @override
  State<CMI> createState() => _CMIState();
}

class _CMIState extends State<CMI> {
  double height = 180;
  int age = 25;
  int weight = 90;
  bool isMale = true;

  Color buttonColor = const Color.fromARGB(255, 86, 137, 15);
  Color containerBackground = const Color.fromARGB(255, 30, 31, 32);
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
          child: Text("BMI Calculator"),
        ),
        // actions: [
        //   IconButton(onPressed: onPressed, icon: Icon(Icons.search)),
        //   IconButton(onPressed: onPressed, icon: Icon(Icons.notifications)),
        // ],
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = true;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: isMale ? buttonColor : containerBackground,
                              borderRadius: BorderRadius.circular(29),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.male_outlined,
                                  size: 100,
                                  color: Colors.white,
                                ),
                                Text(
                                  "MALE",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = false;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: isMale ? containerBackground : buttonColor,
                              borderRadius: BorderRadius.circular(29),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.female_outlined,
                                  size: 100,
                                  color: Colors.white,
                                ),
                                Text(
                                  "FEMALE",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: containerBackground,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HEIGHT",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            "${height.truncate()}",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          SizedBox(width: 5),
                          Text("cm", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Slider(
                        value: height,
                        min: 100,
                        max: 250,
                        thumbColor: buttonColor,
                        activeColor: buttonColor,
                        onChanged: (value) => setState(() {
                          height = value;
                        }),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: containerBackground,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "WEIGHT",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "$weight",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    heroTag: 'Weight -',
                                    backgroundColor: buttonColor,
                                    mini: true,
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    backgroundColor: buttonColor,
                                    mini: true,
                                    heroTag: 'Weight +',
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: containerBackground,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Age",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "$age",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    heroTag: "Age -",
                                    backgroundColor: buttonColor,
                                    mini: true,
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  FloatingActionButton(
                                    heroTag: 'Age +',
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    backgroundColor: buttonColor,
                                    mini: true,
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            MaterialButton(
              height: 70,
              color: buttonColor,
              minWidth: double.infinity,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CMIResults(
                    age: age,
                    gender: isMale,
                    result: calcBMI(weight, height),
                  )),
                );
              },
              child: Text(
                "CALCULATE",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onPressed() {
    print("object");
  }

  double calcBMI(int weight, double height) {
    double result = weight / pow(height / 100, 2);
    return result.roundToDouble();
  }
}
