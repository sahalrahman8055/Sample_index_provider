import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  List<Color> colors = [
    Colors.orange,
    Colors.indigo,
    Colors.brown,
    Colors.amber,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.red
  ];

  int currentIndex = 0;

  void updatecolor() {
    currentIndex = (currentIndex + 1) % colors.length;
    notifyListeners();
  }
}
