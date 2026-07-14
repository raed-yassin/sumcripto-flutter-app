import 'package:flutter/material.dart';
import 'package:flutter_application_1/layout/home_layout.dart';
import 'package:flutter_application_1/modules/bmi/cmi_calc.dart';
import 'package:flutter_application_1/modules/bmi/cmi_result.dart';
import 'package:flutter_application_1/modules/counter/counter.dart';
import 'package:flutter_application_1/modules/login/login.dart';
import 'package:flutter_application_1/modules/list/view_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeLayout(),
    );
  }
}

