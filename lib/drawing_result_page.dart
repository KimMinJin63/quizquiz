import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class DrawingResultPage extends StatelessWidget {
  const DrawingResultPage({super.key});

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
        "realAnswer": 'x',
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
        "question": 'assets/image5.jpg',
        "answer1": 'O',
        "answer2": 'X',
        "realAnswer": 'X',
      },
      {
        "number": 8,
        "question": 'assets/image6.jpg',
        "answer1": 'O',
        "answer2": 'X',
        "realAnswer": 'X',
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('퀴즈 결과'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: quizs.length,
          itemBuilder: (context, index) {
            // String? question = box.read('first_quiz_${quizs[index]['number']}');
            String? answer =
                box.read('draw_quiz_answer_${quizs[index]['number']}');
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
                      // Text(
                      //   '문제 ${quizs[index]['number']} : ${question ?? '질문이 없습니다.'}',
                      //   style: TextStyle(fontSize: 18),
                      // ),
                      // SizedBox(height: 10),
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
