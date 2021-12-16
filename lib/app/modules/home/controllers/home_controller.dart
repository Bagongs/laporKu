import 'package:get/get.dart';

class HomeController extends GetxController {
  int currentIndex = 0;

  set changeCurrentIndex(int val) {
    currentIndex = val;
    update();
  }
}
