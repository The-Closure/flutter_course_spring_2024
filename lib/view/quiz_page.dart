import 'package:builder_and_model/model/quiz_model.dart';
import 'package:flutter/material.dart';

Question question = Question(
    qeustionSyntax: "What is Your Course",
    answers: [
      'Flutter',
      'JAVA',
      'Dart',
      'Mobile Application',
      'Software Engineer'
    ],
    indexOfCorrectAnswer: 3);

class QuizPage extends StatelessWidget {
  QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 242, 237, 237),
              ),
              width: 320,
              height: 200,
              child: Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            width: 20,
                            child: LinearProgressIndicator(
                              value: 0.3,
                            )),
                        CircularProgressIndicator(
                          value: 0.75,
                        ),
                        SizedBox(
                            width: 20,
                            child: LinearProgressIndicator(
                              value: 0.7,
                            )),
                      ],
                    ),
                    Text("Qeustion"),
                    Text(
                      question.qeustionSyntax,
                      style: TextStyle(fontSize: 32),
                    ),
                  ],
                ),
              )),
          SizedBox(
            height: 400,
            child: ListView.builder(
              itemCount: question.answers.length,
              itemBuilder: (context, index) {
                return ListTile(
                  trailing: (index == question.indexOfCorrectAnswer)
                      ? Icon(Icons.check)
                      : Container(
                          width: 10,
                          height: 10,
                        ),
                  onTap: () {
                    if (index == question.indexOfCorrectAnswer) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        showCloseIcon: true,
                        width: 300,
                        duration: Duration(seconds: 1),
                        dismissDirection: DismissDirection.startToEnd,
                        action:
                            SnackBarAction(label: 'label', onPressed: () {}),
                        backgroundColor: Colors.green,
                        content: Text("Correct Answer "),
                        behavior: SnackBarBehavior.floating,
                      ));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.red,
                        content: Text("Wrong Answer "),
                        behavior: SnackBarBehavior.floating,
                      ));
                    }
                  },
                  title: Text(question.answers[index]),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}


