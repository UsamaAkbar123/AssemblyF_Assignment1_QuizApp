// ignore_for_file: non_constant_identifier_names, constant_identifier_names

class Question {
  final int quiz_id;
  final bool isCorrect;
  final String question;
  final List<String> options;

  Question({
    required this.quiz_id,
    required this.question,
    required this.isCorrect,
    required this.options,
  });
}

const List question_list = [
  //1/0
  {
    "quiz_id": 1,
    "questionText": "Who created Flutter?",
    "answers": [
      {"answerText": "Facebook"},
      {"answerText": "Google", "isCorrect": true},
      {"answerText": "Microsoft"},      
    ]
  },
  {
    "quiz_id": 1,
    "questionText":
        " What is Flutter?",
    "answers": [
      {"answerText": "Android Development Kit"},
      {"answerText": "IOS Development Kit"},
      {"answerText": "All Platform SDK Kit", "isCorrect": true},      
    ]
  },
  {
    "quiz_id": 1,
    "questionText":
        "Which programing language is used by Flutter?",
    "answers": [
      {"answerText": "Ruby"},
      {"answerText": "Kotlin"},
      {"answerText": "Dart", "isCorrect": true},      
    ]
  },
  {
    "quiz_id": 1,
    "questionText":
        "Who created Dart programing language?",
    "answers": [
      {"answerText": "Brendan Eich"},
      {"answerText": "Bjarne Stroustrup"},
      {"answerText": "Lars Bak and Kasper Lund", "isCorrect": true},      
    ]
  },
  {
    "quiz_id" : 1,
    "questionText":
        "Flutter is an _____ mobile aplication development framework developed by Google?",
    "answers": [
      {"answerText": "Open-source", "isCorrect": true},
      {"answerText": "Shareware"},
      {"answerText": "Both"},      
    ]
  },

  // 1/5
  //2/0
  {
    "quiz_id" : 2,
    "questionText":
        "Which of the following widgets is used for layouts?",
    "answers": [
      {"answerText": "Text"},
      {"answerText": "Inkwell"},
      {"answerText": "Column", "isCorrect": true},     
    ]
  },
  {
    "quiz_id" : 2,
    "questionText": "When was Flutter first described?",
    "answers": [
      {"answerText": "2016"},
      {"answerText": "2015", "isCorrect": true},
      {"answerText": "2017"},      
    ]
  },
  {
     "quiz_id" : 2,
    "questionText": "When was Flutter released?",
    "answers": [
      {"answerText": "2017", "isCorrect": true},
      {"answerText": "2016"},
      {"answerText": "2019"},      
    ]
  },
  {
    "quiz_id" : 2,
    "questionText":
        "In Which release flutter spport null safety?",
    "answers": [
      {"answerText": "1.8"},
      {"answerText": "2.5", "isCorrect": true},
      {"answerText": "2.8"},         
    ]
  },
  {
    "quiz_id" : 2,
    "questionText":
        "What command do you use to output data to the screen?",
    "answers": [
      {"answerText": "Count>>", "isCorrect": true},
      {"answerText": "Cin"},
      {"answerText": "Output>>"},      
    ]
  },
  //2/5
  //3/0
  {
    "quiz_id" : 3,
    "questionText": "Who is the founder of SpaceX?",
    "answers": [
      {"answerText": "Usama Akbar"},
      {"answerText": "Elon Mask", "isCorrect": true},
      {"answerText": "Abu Anwar"},      
    ]
  },
  {
    "quiz_id" : 3,
    "questionText":
        "Who is the founder of Facebook?",
    "answers": [
      {"answerText": "Sakina Abbas"},
      {"answerText": "Mark Zuckerberg", "isCorrect": true},
      {"answerText": "Faizan Abbas"},      
    ]
  },
  {
    "quiz_id" : 3,
    "questionText":
        "Who is the founder of Google?",
    "answers": [
      {"answerText": "Ayesha Aamir"},
      {"answerText": "Shomaila Faizan"},
      {"answerText": "Larry Page & Sergey Brin", "isCorrect": true},          
    ]
  },
  {
    "quiz_id" : 3,
    "questionText":
        "Who is the founder of Google?",
    "answers": [
      {"answerText": "Jawed Karim,Steve Chen", "isCorrect": true},
      {"answerText": "AssemblyF"},      
      {"answerText": "Mais Alheraki"},     
    ]
  },
  {
    "quiz_id" : 3,
    "questionText":
        "Who is the founder of Tesla?",
    "answers": [
      {"answerText": "Muhammad Usama Akbar"},
      {"answerText": "Elon Mask", "isCorrect": true},
      {"answerText": "Abu Anwar"},
      ]
  },
  // 3/5
  // 4/0
  {
    "quiz_id" : 4,
    "questionText": "Who is the founder of SpaceX?",
    "answers": [
      {"answerText": "Usama Akbar"},
      {"answerText": "Elon Mask", "isCorrect": true},
      {"answerText": "Abu Anwar"},      
    ]
  },
  {
    "quiz_id" : 4,
    "questionText":
        "Who is the founder of Facebook?",
    "answers": [
      {"answerText": "Sakina Abbas"},
      {"answerText": "Mark Zuckerberg", "isCorrect": true},
      {"answerText": "Faizan Abbas"},      
    ]
  },
  {
    "quiz_id" : 4,
    "questionText":
        "Who is the founder of Google?",
    "answers": [
      {"answerText": "Ayesha Aamir"},
      {"answerText": "Shomaila Faizan"},
      {"answerText": "Larry Page & Sergey Brin", "isCorrect": true},          
    ]
  },
  {
    "quiz_id" : 4,
    "questionText":
        "Who is the founder of Google?",
    "answers": [
      {"answerText": "Jawed Karim,Steve Chen", "isCorrect": true},
      {"answerText": "AssemblyF"},      
      {"answerText": "Mais Alheraki"},     
    ]
  },
  {
    "quiz_id" : 4,
    "questionText":
        "Who is the founder of Tesla?",
    "answers": [
      {"answerText": "Muhammad Usama Akbar"},
      {"answerText": "Elon Mask", "isCorrect": true},
      {"answerText": "Abu Anwar"},
      ]
  },
  // 4/5
  // 5/0
  {
    "quiz_id" : 5,
    "questionText":
        "Which of the following widgets is used for layouts?",
    "answers": [
      {"answerText": "Text"},
      {"answerText": "Inkwell"},
      {"answerText": "Column", "isCorrect": true},     
    ]
  },
  {
    "quiz_id" : 5,
    "questionText": "When was Flutter first described?",
    "answers": [
      {"answerText": "2016"},
      {"answerText": "2015", "isCorrect": true},
      {"answerText": "2017"},      
    ]
  },
  {
     "quiz_id" : 5,
    "questionText": "When was Flutter released?",
    "answers": [
      {"answerText": "2017", "isCorrect": true},
      {"answerText": "2016"},
      {"answerText": "2019"},      
    ]
  },
  {
    "quiz_id" : 5,
    "questionText":
        "In Which release flutter spport null safety?",
    "answers": [
      {"answerText": "1.8"},
      {"answerText": "2.5", "isCorrect": true},
      {"answerText": "2.8"},         
    ]
  },
  {
    "quiz_id" : 5,
    "questionText":
        "What command do you use to output data to the screen?",
    "answers": [
      {"answerText": "Count>>", "isCorrect": true},
      {"answerText": "Cin"},
      {"answerText": "Output>>"},      
    ]
  },
  // 5/5
  // 6/0
  {
    "quiz_id" : 6,
    "questionText":
        "Which of the following widgets is used for layouts?",
    "answers": [
      {"answerText": "Text"},
      {"answerText": "Inkwell"},
      {"answerText": "Column", "isCorrect": true},     
    ]
  },
  {
    "quiz_id" : 6,
    "questionText": "When was Flutter first described?",
    "answers": [
      {"answerText": "2016"},
      {"answerText": "2015", "isCorrect": true},
      {"answerText": "2017"},      
    ]
  },
  {
     "quiz_id" : 6,
    "questionText": "When was Flutter released?",
    "answers": [
      {"answerText": "2017", "isCorrect": true},
      {"answerText": "2016"},
      {"answerText": "2019"},      
    ]
  },
  {
    "quiz_id" : 6,
    "questionText":
        "In Which release flutter spport null safety?",
    "answers": [
      {"answerText": "1.8"},
      {"answerText": "2.5", "isCorrect": true},
      {"answerText": "2.8"},         
    ]
  },
  {
    "quiz_id" : 6,
    "questionText":
        "What command do you use to output data to the screen?",
    "answers": [
      {"answerText": "Count>>", "isCorrect": true},
      {"answerText": "Cin"},
      {"answerText": "Output>>"},      
    ]
  },
  // 6/5
  // 7/0
  {
     "quiz_id" : 7,
    "questionText": "When was Flutter released?",
    "answers": [
      {"answerText": "2017", "isCorrect": true},
      {"answerText": "2016"},
      {"answerText": "2019"},      
    ]
  },
  {
    "quiz_id" : 7,
    "questionText":
        "In Which release flutter spport null safety?",
    "answers": [
      {"answerText": "1.8"},
      {"answerText": "2.5", "isCorrect": true},
      {"answerText": "2.8"},         
    ]
  },
  {
    "quiz_id" : 7,
    "questionText":
        "What command do you use to output data to the screen?",
    "answers": [
      {"answerText": "Count>>", "isCorrect": true},
      {"answerText": "Cin"},
      {"answerText": "Output>>"},      
    ]
  },
  {
    "quiz_id" : 7,
    "questionText":
        "Who is the founder of Google?",
    "answers": [
      {"answerText": "Jawed Karim,Steve Chen", "isCorrect": true},
      {"answerText": "AssemblyF"},      
      {"answerText": "Mais Alheraki"},     
    ]
  },
  {
    "quiz_id" : 7,
    "questionText":
        "Who is the founder of Tesla?",
    "answers": [
      {"answerText": "Muhammad Usama Akbar"},
      {"answerText": "Elon Mask", "isCorrect": true},
      {"answerText": "Abu Anwar"},
      ]
  },
  // 7/5
  // 8/0
  {
    "quiz_id" : 8,
    "questionText":
        "Who is the founder of Google?",
    "answers": [
      {"answerText": "Jawed Karim,Steve Chen", "isCorrect": true},
      {"answerText": "AssemblyF"},      
      {"answerText": "Mais Alheraki"},     
    ]
  },
  {
    "quiz_id" : 8,
    "questionText":
        "Who is the founder of Tesla?",
    "answers": [
      {"answerText": "Muhammad Usama Akbar"},
      {"answerText": "Elon Mask", "isCorrect": true},
      {"answerText": "Abu Anwar"},
      ]
  },
  {
     "quiz_id" : 8,
    "questionText": "When was Flutter released?",
    "answers": [
      {"answerText": "2017", "isCorrect": true},
      {"answerText": "2016"},
      {"answerText": "2019"},      
    ]
  },
  {
    "quiz_id" : 8,
    "questionText":
        "In Which release flutter spport null safety?",
    "answers": [
      {"answerText": "1.8"},
      {"answerText": "2.5", "isCorrect": true},
      {"answerText": "2.8"},         
    ]
  },
  {
    "quiz_id" : 8,
    "questionText":
        "What command do you use to output data to the screen?",
    "answers": [
      {"answerText": "Count>>", "isCorrect": true},
      {"answerText": "Cin"},
      {"answerText": "Output>>"},      
    ]
  },
  // 8/5
  // 9/0
  {
    "quiz_id": 9,
    "questionText": "Who created Flutter?",
    "answers": [
      {"answerText": "Facebook"},
      {"answerText": "Google", "isCorrect": true},
      {"answerText": "Microsoft"},      
    ]
  },
  {
    "quiz_id": 9,
    "questionText":
        " What is Flutter?",
    "answers": [
      {"answerText": "Android Development Kit"},
      {"answerText": "IOS Development Kit"},
      {"answerText": "All Platform SDK Kit", "isCorrect": true},      
    ]
  },
  {
    "quiz_id": 9,
    "questionText":
        "Which programing language is used by Flutter?",
    "answers": [
      {"answerText": "Ruby"},
      {"answerText": "Kotlin"},
      {"answerText": "Dart", "isCorrect": true},      
    ]
  },
  {
    "quiz_id": 9,
    "questionText":
        "Who created Dart programing language?",
    "answers": [
      {"answerText": "Brendan Eich"},
      {"answerText": "Bjarne Stroustrup"},
      {"answerText": "Lars Bak and Kasper Lund", "isCorrect": true},      
    ]
  },
  {
    "quiz_id" : 9,
    "questionText":
        "Flutter is an _____ mobile aplication development framework developed by Google?",
    "answers": [
      {"answerText": "Open-source", "isCorrect": true},
      {"answerText": "Shareware"},
      {"answerText": "Both"},      
    ]
  },
  // 9/5
  // 10/1
  {
    "quiz_id" : 10,
    "questionText":
        "Which of the following widgets is used for layouts?",
    "answers": [
      {"answerText": "Text"},
      {"answerText": "Inkwell"},
      {"answerText": "Column", "isCorrect": true},     
    ]
  },
  {
    "quiz_id" : 10,
    "questionText": "When was Flutter first described?",
    "answers": [
      {"answerText": "2016"},
      {"answerText": "2015", "isCorrect": true},
      {"answerText": "2017"},      
    ]
  },
  {
     "quiz_id" : 10,
    "questionText": "When was Flutter released?",
    "answers": [
      {"answerText": "2017", "isCorrect": true},
      {"answerText": "2016"},
      {"answerText": "2019"},      
    ]
  },
  {
    "quiz_id" : 10,
    "questionText":
        "In Which release flutter spport null safety?",
    "answers": [
      {"answerText": "1.8"},
      {"answerText": "2.5", "isCorrect": true},
      {"answerText": "2.8"},         
    ]
  },
  {
    "quiz_id" : 10,
    "questionText":
        "What command do you use to output data to the screen?",
    "answers": [
      {"answerText": "Count>>", "isCorrect": true},
      {"answerText": "Cin"},
      {"answerText": "Output>>"},      
    ]
  },



  
];
