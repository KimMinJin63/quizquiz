import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quiz/controller/self_controller.dart';

class SelfQuizPage extends GetView<SelfController> {
  const SelfQuizPage({super.key});

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
        "realAnswer": '눈썹',
      },
      {
        "number": 2,
        "question": "다음 중 바다가 아닌 곳은?",
        "answer1": '동해',
        "answer2": '남극해',
        "answer3": '사해',
        "answer4": '지중해',
        "answer5": '북극해',
        "realAnswer": '사해',
      },
      {
        "number": 3,
        "question": "심청이의 아버지 심봉사의 이름은?",
        "answer1": '심한규',
        "answer2": '심봉한',
        "answer3": '심봉규',
        "answer4": '심학봉',
        "answer5": '심학규',
        "realAnswer": '심학규',
      },
      {
        "number": 4,
        "question": "심청전에서 심청이가 빠진 곳은 어디일까요?",
        "answer1": '인담수',
        "answer2": '심담수',
        "answer3": '인당수',
        "answer4": '임담수',
        "answer5": '심당수',
        "realAnswer": '인당수',
      },
      {
        "number": 5,
        "question": "택시 번호판의 바탕색은?",
        "answer1": '하얀색',
        "answer2": '검정색',
        "answer3": '초록색',
        "answer4": '노란색',
        "answer5": '연두색',
        "realAnswer": '노란색',
      }
    ];
    return Scaffold(
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
                            child: Text(quizs[index]['question']),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 10,
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
