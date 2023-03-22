import 'package:flutter/material.dart';

class UIProvider extends ChangeNotifier {
  bool _visto=false;

  bool get visto => _visto;

  set visto (bool value){
    _visto=value;
    notifyListeners();
  }
}