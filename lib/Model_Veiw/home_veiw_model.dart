// ignore: depend_on_referenced_packages

// ignore: depend_on_referenced_packages

import 'package:e_commerce/Screens/cart/cart_page.dart';
import 'package:e_commerce/Screens/home.dart';
import 'package:e_commerce/Screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homeviewmodel extends GetxController {
  int _navigatorValue = 0;
  get navigatorvalue => _navigatorValue;
  Widget _current_screen = HomeScreen();
  get currentscreen => _current_screen;
  void selectedvalue(int value) {
    _navigatorValue = value;
    switch (value) {
      case 0:
        _current_screen = HomeScreen();
        break;
      case 1:
        _current_screen = CartScreen();
        break;
      case 2:
        _current_screen = ProfileScreen();
        break;
    }
    update();
  }
}
