import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  TextEditingController controller = TextEditingController();
  PageController pageController = PageController();
  bool isCorrect = false;
  bool isAnswered = false;

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> quizs = [
      {
        "number": 1,
        "question": "의학적으로 얼굴과 머리를 구분하는 기준은 어디일까요?",
        "answer": '눈썹',
      },
      {
        "number": 2,
        "question": "다음 중 바다가 아닌 곳은?",
        "answer": '사해',
      },
      {
        "number": 3,
        "question": "심청이의 아버지 심봉사의 이름은?",
        "answer": '심학규',
      },
      {
        "number": 4,
        "question": "심청전에서 심청이가 빠진 곳은 어디일까요?",
        "answer": '인당수',
      },
      {
        "number": 5,
        "question": "택시 번호판의 바탕색은?",
        "answer": '노란색',
      }
    ];

    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          controller: pageController,
          itemCount: quizs.length,
          itemBuilder: (context, index) {
            bool isLastPage = index == quizs.length - 1; // 마지막 페이지 여부 확인

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('${quizs[index]['number']}.'),
                    Text(quizs[index]['question']),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3 * 2,
                      child: TextField(
                        controller: controller,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isAnswered = true;
                          if (controller.text.trim() ==
                              quizs[index]["answer"]) {
                            isCorrect = true;
                          } else {
                            isCorrect = false;
                          }
                        });
                      },
                      child: Text('제출'),
                    ),
                  ],
                ),
                isAnswered
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            isCorrect ? '정답입니다' : '틀렸습니다',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: isCorrect ? Colors.green : Colors.red,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (isCorrect) {
                                  if (isLastPage) {
                                    pageController.jumpToPage(0);
                                  } else {
                                    pageController.nextPage(
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.linear,
                                    );
                                  }
                                  controller.clear();
                                  isAnswered = false;
                                } else {
                                  controller.clear();
                                  isAnswered = false;
                                }
                              });
                            },
                            child: Text(
                              isLastPage
                                  ? (isCorrect ? '처음으로' : '다시 풀기')
                                  : (isCorrect ? '다음 문제' : '다시 풀기')
                            ),
                          ),
                        ],
                      )
                    : SizedBox.shrink(), // 아무 메시지도 출력하지 않음
                if (isLastPage && isCorrect)
                isAnswered 
                ?                   Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      '마지막 문제입니다',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                  )
                  : SizedBox.shrink(),
              ],
            );
          },
        ),
      ),
    );
  }
}
