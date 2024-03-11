import 'package:flutter/material.dart';
import 'package:quiz_app_with_restapi/model/quiz_model.dart';

QuizModel quizModel = QuizModel(
    question: 'How Are You ?',
    answers: ["Fine", " Not Fine", "Very Fine", "Not of your bunisness"],
    correctIndex: 0);

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: const Color.fromARGB(255, 208, 149, 218),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 30),
                child: Icon(Icons.arrow_back, color: Colors.yellow),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(colors: [
                          const Color.fromARGB(255, 207, 101, 226),
                          const Color.fromARGB(255, 228, 184, 118)
                        ])),
                    child: Column(
                      children: [
                        CircularProgressIndicator(
                          color: Colors.purple,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                  width: 50, child: LinearProgressIndicator()),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                  width: 70, child: LinearProgressIndicator()),
                            ),
                          ],
                        ),
                        Text(
                          "Quesions 1/1",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.purple),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Center(
                            child: Text(
                              quizModel.question,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              SizedBox(
                height: 500,
                child: ListView.builder(
                  itemCount: quizModel.answers.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        width: 240,
                        child: ListTile(
                            onTap: () {
                              if (index == quizModel.correctIndex) {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(new SnackBar(
                                  content: Text("Success"),
                                  backgroundColor: Colors.green,
                                ));
                              } else {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(new SnackBar(
                                  content: Text("Error"),
                                  backgroundColor: Colors.red,
                                ));
                              }
                            },
                            title: Text(quizModel.answers[index]),
                            trailing: (index == quizModel.correctIndex)
                                ? CircleAvatar(
                                    child: Icon(
                                      Icons.check,
                                    ),
                                  )
                                : SizedBox()),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
