import 'dart:math';

import 'package:get/get.dart';

class HomeController extends GetxController {
  Rx<int> leftDice = 3.obs;
  Rx<int> rightDice = 6.obs;
  void changeDice() {
    final random1 = Random().nextInt(6) + 1;
    final random2 = Random().nextInt(6) + 1;

    leftDice.value = random1;
    rightDice.value = random2;
  }
}
