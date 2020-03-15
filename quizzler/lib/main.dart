import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: QuizPage(),

        ),
      ),
    );
  }
}


class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  Icon correct = Icon(
    Icons.check,
    color: Colors.green,
  );
  Icon wrong = Icon(
    Icons.close,
    color: Colors.red,
  );

  List<Icon> scoreKeeper =  [];
  List<String> questions = [
    'You can lead a cow down stairs but not up stairs',
    'Approximately one quarter of human bones are in the feet.',
    'The slug\'s blood is green',
  ];
  List<bool> answers = [
    true,
    false,
    true
  ];

  int questionNum = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questions[questionNum],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                bool correctAns  = answers[questionNum];

                if(correctAns == true ){
                  setState((){
                    questionNum++;
                    scoreKeeper.add(correct);
                  });
                }else{
                  setState((){
                    questionNum++;
                    scoreKeeper.add(wrong);
                  });
                }

                //The user picked true.
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                bool correctAns  = answers[questionNum];

                if(correctAns == false ){
                  setState((){
                    questionNum++;
                    scoreKeeper.add(correct);
                  });
                }else{
                  setState((){
                    questionNum++;
                    scoreKeeper.add(wrong);
                  });
                }
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),
    SizedBox(
         height: 10.0,
    )
      ],

    );
  }
}
