import 'package:flutter/material.dart';

class TextFieldProvider extends ChangeNotifier {
  bool _isVisible = false;
  bool get isVisible => _isVisible;
  bool _isPassword = false;
  bool get isPassword => _isPassword;
  void changeIconPassword() {
    _isVisible = !_isVisible;
    _isPassword = !_isPassword;
    notifyListeners();
  }
}
