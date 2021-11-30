import 'package:get/get.dart';

class TextFieldController extends GetxController {
  bool _isPassword = false;
  bool get isPassword => _isPassword;

  bool _isVisible = false;
  bool get isVisible => _isVisible;
  void changeObsecure() {
    _isPassword = !_isPassword;
    _isVisible = !_isVisible;
    update();
  }
}
