import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeViewController extends GetxController {
  int szamlalo = 0;
  void novel() {
    if (szamlalo < 5) {
      szamlalo++;
      update();
    }
  }

  void csokkent() {
    if (szamlalo > 0) {
      szamlalo--;
      update();
    }
  }

  List<Icon> getIcons() {
    List<Icon> temp = [];
    for (int i = 0; i <= 5; i++) {
      temp.add(Icon((i <= szamlalo) ? Icons.star : Icons.star_border));
    }
    return temp;
  }
}
