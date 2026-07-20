import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/counter_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Test extends ConsumerWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(nameProviderR);
    final name1 = ref.watch(nameProvider);


    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "$name ",
              style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
