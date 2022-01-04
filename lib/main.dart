import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app_assignment/controller/question_controller.dart';
import 'package:quiz_app_assignment/screens/quiz_question/question_screen.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider(create: (context) => QuestionController())
      ],
      child: const MyApp(),),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(       
        primarySwatch: Colors.blue,
      ),
      home: const ListOfQuiz(),
    );
  }
}

class ListOfQuiz extends StatelessWidget {
  const ListOfQuiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightGreen,
        title: const Text(
          'Quiz App',
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  color: Colors.lightGreen,
                ),
              ),
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => QuizQuestion(
                            quiz_index: index + 1,
                          )));
                },
                trailing: const Icon(
                  Icons.forward,
                  color: Colors.white,
                ),
                title: Text(
                  'Quiz ${index + 1}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
