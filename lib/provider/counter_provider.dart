import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int counter = 0;

  int counterToRead() {
    return counter;
  }

  void counterToIncrease() {
    counter = counter + 1;
    notifyListeners(); //dinleyicileri tetikleyen metod
  }

  void counterToReduce() {
    counter = counter - 1;
    notifyListeners(); //dinleyicileri tetikleyen metod
  }

  void counterToReset() {
    counter = 0;
    notifyListeners();
  }
}
