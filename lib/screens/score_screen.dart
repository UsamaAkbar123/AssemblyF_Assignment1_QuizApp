import 'package:flutter/material.dart';
import 'package:quiz_app_assignment/main.dart';

class ScoreScreen extends StatelessWidget {
  final int totalQuestion;
  final int correctAnswer;
  final int quizNo;
  const ScoreScreen({
    Key? key,
    required this.totalQuestion,
    required this.correctAnswer,
    required this.quizNo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightGreen,
        title: Text('Quiz $quizNo Result'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: size.height * 0.90,
          width: size.width * 0.90,
          decoration: const BoxDecoration(
            color: Colors.lightGreen,
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: Container(
            height: size.height * 0.65,
            width: size.width * 0.70,
            // constraints:  BoxConstraints(
            //   maxHeight: size.height * 0.65,
            //   maxWidth: size.width * 0.65,
            // ),
            decoration: const BoxDecoration(
              color: Color(0xff333333),
              shape: BoxShape.circle,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Quiz $quizNo',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(height: 5.0),
                Text(
                  'Total Question: $totalQuestion',
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Total Correct: $correctAnswer',
                  style: const TextStyle(
                    fontSize: 22.0,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Total Score: ${correctAnswer * 2}/${totalQuestion * 2}',
                  //'answer',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                    fontSize: 25.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        splashColor: Colors.lightGreen,
        backgroundColor: Colors.lightGreen,
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const ListOfQuiz(),
            ),
          );
        },
        icon: const Icon(Icons.next_plan),
        label: const Text("Next Quiz"),
      ),
    );
  }
}
