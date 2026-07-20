import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/counter/counter.dart';
import 'package:flutter_application_1/modules/counter/test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  // to use riverpod you should wrap the main app by ProviderScope
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Counter());
  }
}
