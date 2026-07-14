import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/tasks/archive_tasks.dart';
import 'package:flutter_application_1/modules/tasks/done_tasks.dart';
import 'package:flutter_application_1/modules/tasks/new_tasks.dart';
import 'package:flutter_application_1/shared/components/components.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int indexTab = 0;
  var tasksList = [NewTasks(), DoneTasks(), ArchiveTasks()];
  List<String> titles = ["New Tasks", "Done Tasks", "Archive Tasks"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBare(title: titles[indexTab]),
      body: tasksList[indexTab],
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            print(await getName());
          } catch (error) {
            print("Error ${error.toString()}");
          }
        },
        backgroundColor: Colors.teal,
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.teal,
        // elevation: 0.0,
        currentIndex: indexTab,
        onTap: (index) {
          setState(() {
            indexTab = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Tasks"),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle_outline),
            label: "Done",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.archive), label: "Archive"),
        ],
      ),
    );
  }

  void onPressed() {
    print("object");
  }

  Future<String> getName() async {
    throw("Some Errors Here");
    // throw Error();
    return "Ahmed Ali";
  }
}
