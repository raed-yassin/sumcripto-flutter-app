import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/counter_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Counter extends ConsumerStatefulWidget {
  const Counter({super.key});

  @override
  ConsumerState<Counter> createState() => _CounterState();
}

class _CounterState extends ConsumerState<Counter> {
  // in state full component the system is run sequensialy
  // 1. constructor
  // 2. initState()
  // 3. build()

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final counterProv = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        centerTitle: true,
        leading: Container(child: Icon(Icons.menu)),
        title: Container(alignment: Alignment.center, child: Text("SumCripto")),
        actions: [
          IconButton(onPressed: onPressed, icon: Icon(Icons.search)),
          IconButton(onPressed: onPressed, icon: Icon(Icons.notifications)),
        ],
      ),
      body: Container(
        color: Colors.teal,
        // height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: const Color.fromARGB(255, 72, 176, 152),
                  child: MaterialButton(
                    onPressed: () {
                      ref.read(counterProvider.notifier).increament();
                    },
                    height: 50,
                    child: Icon(Icons.add),
                  ),
                ),
                SizedBox(width: 40),
                Text(
                  "$counterProv",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SizedBox(width: 40),
                Container(
                  color: const Color.fromARGB(255, 72, 176, 152),
                  child: MaterialButton(
                    height: 50,
                    onPressed: () {
                      if (counterProv <= 0) return;
                      ref.read(counterProvider.notifier).decreament();
                    },
                    child: Icon(Icons.remove),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onPressed() {
    print("On Pressed");
  }
}
