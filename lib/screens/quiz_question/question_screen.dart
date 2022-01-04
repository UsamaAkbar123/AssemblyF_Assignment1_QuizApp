// ignore_for_file: non_constant_identifier_names, unnecessary_const
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app_assignment/controller/question_controller.dart';
import 'package:quiz_app_assignment/models/quiz_question.dart';
import 'package:quiz_app_assignment/screens/score_screen.dart';

class QuizQuestion extends StatefulWidget {
  final int quiz_index;
  const QuizQuestion({Key? key, required this.quiz_index}) : super(key: key);

  @override
  State<QuizQuestion> createState() => _QuizQuestionState();
}

class _QuizQuestionState extends State<QuizQuestion> {
  List filter_question_list = [];
  var count = 0;
  var noOfClick = 1;
  var noOfClick1 = 0;
  var radioValue = -1;
  PageController pageController = PageController();
  bool showButton = false;
  int _selectedIndex = -1;

  void setSelectedIndex(int selectedIndex) {
    setState(() {
      _selectedIndex = selectedIndex;
    });
  }

  getQuizIndexQuestion() {
    do {
      if (question_list[count]["quiz_id"] == widget.quiz_index) {
        filter_question_list.add(question_list[count]);
      }
      setState(
        () {
          count++;
        },
      );
    } while (question_list.length != count);
  }

  @override
  void initState() {
    getQuizIndexQuestion();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightGreen,
        title: const Text('Quiz Queston'),
        centerTitle: true,
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Align(
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                if (noOfClick1 == filter_question_list.length) {
                  int result =
                      Provider.of<QuestionController>(context, listen: false)
                          .copyCorrectAns;
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => ScoreScreen(
                        totalQuestion: filter_question_list.length,
                        correctAnswer: result,
                        quizNo: widget.quiz_index,
                      ),
                    ),
                  );
                } else {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Please Complete Quiz'),
                          content: const Text('Press Ok for Continue Quiz'),
                          actions: [
                            TextButton(
                              child: const Text("OK"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      });
                }
              },
              child: const Text(
                'Submit',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10)
        ],
      ),
      body: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: filter_question_list.length,
        controller: pageController,
        itemBuilder: (context, index) {
          return Column(
            children: [
              const SizedBox(height: 20.0),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                margin: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                alignment: Alignment.center,
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: const Color(0xff333333),
                ),
                child: Text(
                  filter_question_list[index]['questionText'],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Container(
                height: 230,
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index1) {
                    return Container(
                      margin: const EdgeInsets.all(10.0),
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      height: 50.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: _selectedIndex == index1 &&
                                filter_question_list[index]['answers'][index1]
                                        ['isCorrect'] ==
                                    true
                            ? Colors.lightGreen
                            : _selectedIndex == index1 &&
                                    filter_question_list[index]['answers']
                                            [index1]['isCorrect'] ==
                                        null
                                ? Colors.red
                                : const Color(0xff333333),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            filter_question_list[index]['answers'][index1]
                                ['answerText'],
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                            maxLines: 3,
                          ),
                          Radio(
                            value: index1,
                            groupValue: radioValue,
                            onChanged: (int? newValue) {
                              setState(
                                () {
                                  if (radioValue == -1) {
                                    noOfClick1++;
                                    setSelectedIndex(index1);
                                    showButton = true;
                                    radioValue = newValue!;
                                    Provider.of<QuestionController>(context,
                                            listen: false)
                                        .finalScore(
                                      filter_question_list[index]['answers']
                                          [index1]['isCorrect'],
                                      context,
                                      filter_question_list.length,
                                      noOfClick,
                                    );
                                  }
                                },
                              );
                            },
                            fillColor: MaterialStateColor.resolveWith(
                                (states) => Colors.white),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20.0),
              noOfClick != filter_question_list.length
                  ? SizedBox(
                      height: 47,
                      width: 130,
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        onPressed: () {
                          if (radioValue == -1) {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text('Answer the Question'),
                                  content:
                                      const Text('Then Click on Next Button'),
                                  actions: [
                                    TextButton(
                                      child: const Text("OK"),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          } else {
                            Future.delayed(const Duration(seconds: 0), () {
                              pageController.nextPage(
                                duration: const Duration(milliseconds: 250),
                                curve: Curves.easeInOut,
                              );
                            });
                            setState(() {
                              noOfClick++;
                              radioValue = -1;
                              _selectedIndex = -1;
                            });
                          }
                        },
                        child: const Text(
                          'NEXT',
                          style: const TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        color: Colors.lightGreen,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    )
                  : Container(),
            ],
          );
        },
      ),
    );
  }
}
