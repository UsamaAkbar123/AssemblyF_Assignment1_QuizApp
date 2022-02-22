import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:quiz_app_assignment/models/quiz_model.dart';
import 'package:http/http.dart' as http;

class QuestionController {
  int _correctAns = 0;
  int copyCorrectAns = 0;

  void finalScore(
      bool? answer, BuildContext context, int totalQuestion, int noOfClick) {
    if (answer == true) {
      _correctAns = _correctAns + 1;
    }
    if (totalQuestion == noOfClick) {
      copyCorrectAns = _correctAns;
      _correctAns = 0;
    }
  }

  ///This api call fetches all the users from the server and returns a list of UserModel.
  Future<List<QuizModel>> getQuiz() async {
    ///Api To Call    
    String apiEndPoint = "https://quizapi.io/api/v1/questions";
    final uri = Uri.parse(apiEndPoint).replace(queryParameters: {
      'apiKey': 'DovZODN5ZS1xbFKSLRDjak7jPsQbWpf6W3IGB5cr',      
    });
    try {
      //Get Request execution
      http.Response response =
          await http.get(uri);
      //if status code is 200, then and only proceed further. Else Throw an error
      if (response.statusCode == 200) {
        //converts json string i.e response.body into dynamic object
        dynamic dynamicObject = const JsonDecoder().convert(response.body);
        // print('object');
        // print(dynamicObject);
        // dynamic allData = dynamicObject["data"];
        List<QuizModel> allUsers = [];
        for (var data in dynamicObject) {
          //converting api response data into models
          QuizModel userMode = QuizModel.fromJson(data);
          allUsers.add(userMode);
        }
        return allUsers;
      } else {
        throw Exception(["Error: ${response.statusCode} status code."]);
      }
    } catch (e) {
      //Exception Thrown should be handled on the front end UI. See the code where this fucntion has been called.
      throw e;
    }
  }
}
