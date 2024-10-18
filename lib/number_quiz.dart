import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quiz/controller/number_controller.dart';
import 'package:quiz/number_result_page.dart';
import 'package:quiz/quiz.dart';
import 'package:quiz/widget/Inkwell_text.dart';

class NumberQuiz extends GetView<NumberController> {
  const NumberQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    final box = GetStorage();
        List<Map<String, dynamic>> quizs = [
      {
        "number": 1,
        "question": "의학적으로 얼굴과 머리를 구분하는 기준은 어디일까요?",
        "answer1": '눈썹',
        "answer2": '머리카락',
        "answer3": '귀',
        "answer4": '이마',
        "answer5": '눈',
        "realAnswer": '1번',
      },
      {
        "number": 2,
        "question": "다음 중 바다가 아닌 곳은?",
        "answer1": '동해',
        "answer2": '남극해',
        "answer3": '사해',
        "answer4": '지중해',
        "answer5": '북극해',
        "realAnswer": '3번',
      },
      {
        "number": 3,
        "question": "심청이의 아버지 심봉사의 이름은?",
        "answer1": '심한규',
        "answer2": '심봉한',
        "answer3": '심봉규',
        "answer4": '심학봉',
        "answer5": '심학규',
        "realAnswer": '5번',
      },
      {
        "number": 4,
        "question": "심청전에서 심청이가 빠진 곳은 어디일까요?",
        "answer1": '인담수',
        "answer2": '심담수',
        "answer3": '인당수',
        "answer4": '임담수',
        "answer5": '심당수',
        "realAnswer": '3번',
      },
      {
        "number": 5,
        "question": "택시 번호판의 바탕색은?",
        "answer1": '하얀색',
        "answer2": '검정색',
        "answer3": '초록색',
        "answer4": '노란색',
        "answer5": '연두색',
        "realAnswer": '4번',
      }
    ];


    return Scaffold(
      body: SafeArea(
          child: PageView.builder(
        controller: controller.pageController, // PageController 연결
        itemCount: quizs.length, // 전체 퀴즈 수
        itemBuilder: (context, index) {
          bool isLastPage = index == quizs.length - 1; // 마지막 페이지 여부 체크

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(child: Text(quizs[index]['question'])),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 10,
                  ),
                  InkWellText(
                    text: '1. ${quizs[index]['answer1']}',
                    onTap: () {
                      box.write(
                          'number_quiz_answer_${quizs[index]['number']}', '1번');
                      box.write('number_quiz_${quizs[index]['number']}',
                          '${quizs[index]['question']}');
                      print(
                          '${box.read('number_quiz_answer_${quizs[index]['number']}')}가 저장됨');
                      print(
                          '${box.read('number_quiz_${quizs[index]['number']}')}가 저장됨');
                      controller.isSelect.value = true;
                    },
                  ),
                  InkWellText(
                    text: '2. ${quizs[index]['answer2']}',
                    onTap: () {
                      box.write(
                          'number_quiz_answer_${quizs[index]['number']}', '2번');
                      box.write('number_quiz_${quizs[index]['number']}',
                          '${quizs[index]['question']}');
                      print(
                          '${box.read('number_quiz_answer_${quizs[index]['number']}')}가 저장됨');
                      print(
                          '${box.read('number_quiz_${quizs[index]['number']}')}가 저장됨');
                      controller.isSelect.value = true;
                    },
                  ),
                  InkWellText(
                    text: '3. ${quizs[index]['answer3']}',
                    onTap: () {
                      box.write(
                          'number_quiz_answer_${quizs[index]['number']}', '3번');
                      box.write('number_quiz_${quizs[index]['number']}',
                          '${quizs[index]['question']}');
                      print(
                          '${box.read('number_quiz_answer_${quizs[index]['number']}')}가 저장됨');
                      print(
                          '${box.read('number_quiz_${quizs[index]['number']}')}가 저장됨');
                      controller.isSelect.value = true;
                    },
                  ),
                  InkWellText(
                    text: '4. ${quizs[index]['answer4']}',
                    onTap: () {
                      box.write(
                          'number_quiz_answer_${quizs[index]['number']}', '4번');
                      box.write('number_quiz_${quizs[index]['number']}',
                          '${quizs[index]['question']}');
                      print(
                          '${box.read('number_quiz_answer_${quizs[index]['number']}')}가 저장됨');
                      print(
                          '${box.read('number_quiz_${quizs[index]['number']}')}가 저장됨');
                      controller.isSelect.value = true;
                    },
                  ),
                  InkWellText(
                    text: '5. ${quizs[index]['answer5']}',
                    onTap: () {
                      box.write(
                          'number_quiz_answer_${quizs[index]['number']}', '5번');
                      box.write('number_quiz_${quizs[index]['number']}',
                          '${quizs[index]['question']}');
                      print(
                          '${box.read('number_quiz_answer_${quizs[index]['number']}')}가 저장됨');
                      print(
                          '${box.read('number_quiz_${quizs[index]['number']}')}가 저장됨');
                      controller.isSelect.value = true;
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 10,
                  ),
                  Obx(() =>
                      controller.isChecked.value && controller.isSelect.value
                          ? Text('정답: ${quizs[index]['realAnswer']}')
                          : SizedBox()),
                  Obx(() => ElevatedButton(
                        onPressed: controller.isSelect.value
                            ? () {
                                if (!controller.isChecked.value) {
                                  controller.isChecked.value = true;
                                } else {
                                  print('다음 버튼 클릭됨');
                                  controller.isChecked.value = false;
                                  controller.isSelect.value = false;
                                  
                                  if (!isLastPage) {
                                    controller.pageController.nextPage(
                                      duration: Duration(milliseconds: 300),
                                      curve: Curves.easeInOut,
                                    );
                                  }
                                  else {
                                    Get.to(() => NumberResultPage());
                                  }
                                }
                              }
                            : null, 
                        child: Text(controller.isChecked.value
                            ? (isLastPage ? '마지막 문제입니다' : '다음문제')
                            : '정답보기'),
                      )),
                ],
              ),
            ),
          );
        },
      )),
    );
  }
}
