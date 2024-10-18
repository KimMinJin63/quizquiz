import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quiz/quiz.dart'; // 퀴즈 데이터를 가져옴

class NumberResultPage extends StatelessWidget {
  const NumberResultPage({super.key});

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
      appBar: AppBar(
        title: Text('퀴즈 결과'),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: quizs.length,
          itemBuilder: (context, index) {
            String? question = box.read('first_quiz_${quizs[index]['number']}');
            String? answer =
                box.read('first_quiz_answer_${quizs[index]['number']}');
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black26,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '문제 ${quizs[index]['number']} : ${question ?? '질문이 없습니다.'}',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '선택한 답: ${answer ?? '답이 선택되지 않았습니다.'}',
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '정답: ${quizs[index]['realAnswer']}',
                        style: TextStyle(fontSize: 16, color: Colors.green),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
