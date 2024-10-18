import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/detail_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  static const route = '/main';

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
                    Get.to(() => DetailPage());
                  },
                  child: Text('기능별 근육')),
              ElevatedButton(onPressed: () {}, child: Text('OOO 근육')),
              ElevatedButton(onPressed: () {}, child: Text('XXX 근육')),
            ],
          ),
        ),
      )),
    );
  }
}
