// this file for test dart

import 'dart:async';

void main() async {
  print("A");

  scheduleMicrotask(() {
    print("B");
  });
  scheduleMicrotask(() {
    print("B1");
  });
  scheduleMicrotask(() {
    print("B2");
  });

  Future(() {
    print("C");
  });

  Future(() {
    print("C1");
  });

  scheduleMicrotask(() {
    print("B22");
  });

  scheduleMicrotask(() {
    print("B22");
  });

  scheduleMicrotask(() {
    print("B33");
  });

  String name = await getName();
  print('object $name');
  getName()
      .then((value) {
        print("Hello from getName");
        return "again";
      })
      .then((value) => print(value))
      .catchError((error) => print(error.toString()));

  scheduleMicrotask(() {
    print("T555");
  });
  print("D");
}

Future<String> getName() async {
  return "Raed Here";
}
