import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class WriteController extends GetxController {
  PageController pageController = PageController();
  TextEditingController textEditingController = TextEditingController();
  RxBool isPress = false.obs;
  RxBool isAnswered = false.obs;
}
