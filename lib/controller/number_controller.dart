import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class NumberController extends GetxController{
  PageController pageController = PageController();
  RxBool isChecked = false.obs;
  RxBool isSelect = false.obs;
}