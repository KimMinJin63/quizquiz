import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quiz/controller/drawing_controller.dart';
import 'package:quiz/drawing_result_page.dart';
import 'package:quiz/write_result_page.dart';

class DrawingSecondPage extends GetView<DrawingController> {
  const DrawingSecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final box = GetStorage();
    List<Map<String, dynamic>> quizs = [
      {
        "number": 1,
        "question": 'assets/image1.jpg',
        "answer1": 'O',
        "answer2": 'X',
        "realAnswer": 'X',
      },
      {
        "number": 2,
        "question": 'assets/image2.jpg',
        "answer1": 'O',
        "answer2": 'X',
        "realAnswer": 'X',
      },
      {
        "number": 3,
        "question": 'assets/image8.png',
        "answer1": 'O',
        "answer2": 'X',
        "realAnswer": 'O',
      },
      {
        "number": 4,
        "question": 'assets/image3.jpg',
        "answer1": 'O',
        "answer2": 'X',
        "realAnswer": 'X',
      },
      {
        "number": 5,
        "question": 'assets/image4.jpg',
        "answer1": 'O',
        "answer2": 'X',
        "realAnswer": 'X',
      },
      {
        "number": 6,
        "question": 'assets/image7.jpg',
        "answer1": 'O',
        "answer2": 'X',
        "realAnswer": 'O',
      },
      {
        "number": 7,
        "question": 'assets/image5.png',
        "answer1": 'O',
        "answer2": 'X',
        "realAnswer": 'X',
      },
      {
        "number": 8,
        "question": 'assets/image6.png',
        "answer1": 'O',
        "answer2": 'X',
        "realAnswer": 'O',
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
        body: PageView.builder(
            controller: controller.pageController,
            itemCount: quizs.length,
            itemBuilder: (context, index) {
              bool isLastPage = index == quizs.length - 1;
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black26,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Center(
                            child: Image.asset(
                              quizs[index]["question"],
                              width: MediaQuery.of(context).size.width / 3,
                              height: MediaQuery.of(context).size.height / 5,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Obx(
                              () => ElevatedButton(
                                  onPressed: controller.isAnswered.value
                                      ? () {
                                          print('다음 버튼 클릭됨');

                                          print('O 버튼 클릭됨');
                                          box.write(
                                              'draw_quiz_answer_${quizs[index]['number']}',
                                              '${quizs[index]['answer1']}');
                                          print(
                                              '${box.read('draw_quiz_answer_${quizs[index]['number']}')}가 저장됨');

                                          if (!isLastPage) {
                                            controller.pageController.nextPage(
                                              duration:
                                                  Duration(milliseconds: 300),
                                              curve: Curves.easeInOut,
                                            );
                                          } else {
                                            Get.to(() => DrawingResultPage());
                                          }
                                        }
                                      : null,
                                  child: Text(quizs[index]['answer1'])),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Obx(
                              () => ElevatedButton(
                                  onPressed: controller.isAnswered.value
                                      ? () {
                                          print('X 버튼 클릭됨');
                                          box.write(
                                              'draw_quiz_answer_${quizs[index]['number']}',
                                              '${quizs[index]['answer2']}');
                                          print(
                                              '${box.read('draw_quiz_answer_${quizs[index]['number']}')}가 저장됨');

                                          if (!isLastPage) {
                                            controller.pageController.nextPage(
                                              duration:
                                                  Duration(milliseconds: 300),
                                              curve: Curves.easeInOut,
                                            );
                                          } else {
                                            Get.to(() => DrawingResultPage());
                                          }
                                        }
                                      : null,
                                  child: Text(quizs[index]['answer2'])),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
