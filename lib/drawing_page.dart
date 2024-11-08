import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/drawing_second_page.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DrawingPage extends StatelessWidget {
  const DrawingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final String youtubeId = '2WJcQHiIG0U';

    final YoutubePlayerController youtube = YoutubePlayerController(
      initialVideoId: youtubeId,
      flags: const YoutubePlayerFlags(autoPlay: false),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('내용 복습 후 문제를 풀어보세요', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            SizedBox(
              child: YoutubePlayer(
                controller: youtube,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 10,
            ),
            ElevatedButton(onPressed: () {
              Get.to(() => DrawingSecondPage());
            }, child: Text('문제풀기'))
          ],
        ),
      )),
    );
  }
}
