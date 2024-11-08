import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class DrawingController extends GetxController{
  PageController pageController = PageController();
  RxBool isAnswered = true.obs;
  RxBool isPress = false.obs;
}