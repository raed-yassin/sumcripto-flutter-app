import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter_provider.g.dart';

// int counter = 0;
// final counterProvider = StateProvider((ref) {
//   return counter;
// });

// this is read-only state
String nameR = "Raed Yassin";
final nameProviderR = Provider((ref) {
  return nameR;
});

@riverpod
String name(Ref ref){
  return nameR;
}
// generate state and its provider

class CounterProvider extends Notifier<int> {
  @override
  int build() {
    return 0;
  }

  void increament() {
    state++;
  }

  void decreament() {
    state--;
  }
}

final counterProvider = NotifierProvider<CounterProvider, int>(CounterProvider.new);
