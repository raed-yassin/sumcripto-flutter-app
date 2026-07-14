import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;

  // in state full component the system is run sequensialy
  // 1. constructor
  // 2. initState()
  // 3. build()

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                MaterialButton(
                  onPressed: (){
                    setState(() {
                      counter++;
                    print(counter);
                    });
                  },
                  height: 50,
                  child: Icon(Icons.plus_one),
                ),
                SizedBox(width: 20),
                Text("$counter", style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 20),
                MaterialButton(
                  height: 50,
                  onPressed: (){
                    setState(() {
                      counter--;
                    print(counter);
                    });
                  },
                  child: Icon(Icons.minor_crash_outlined), 
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
