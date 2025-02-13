import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier{

  bool isDark=false;


  void changeTheme(bool value){
    isDark = value;
    notifyListeners();
  }

}