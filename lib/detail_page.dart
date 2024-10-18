import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/quiz_page2.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});
  static const route = '/detail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => QuizPage2());
                  },
                  child: Text('상지편')),
              ElevatedButton(onPressed: () {}, child: Text('하지편')),
            ],
          ),
        ),
      )),
    );
  }
}
