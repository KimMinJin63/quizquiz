import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/controller/number_controller.dart';
import 'package:quiz/controller/self_controller.dart';
import 'package:quiz/controller/write_controller.dart';
import 'package:quiz/main_page.dart';
import 'package:quiz/number_quiz.dart';
import 'package:quiz/quiz_page.dart';
import 'package:quiz/self_quiz.dart';
import 'package:quiz/write_quiz.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: BindingsBuilder(() {
            Get.lazyPut(() => NumberController(), fenix: true);
            Get.lazyPut(() => WriteController(), fenix: true);
            Get.lazyPut(() => SelfController(), fenix: true);
          }),
      home: SelfQuizPage(),
      // home: NumberQuiz(),
      // home: QuizPage(),
    );
  }
}
