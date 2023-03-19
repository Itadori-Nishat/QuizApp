import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import '../4_option_mcq/MCQ_HomePage.dart';
import 'QuizBrain.dart';
import 'package:fluttertoast/fluttertoast.dart';


QuizBrain quiz_Brain = QuizBrain();

class QuizHomePage extends StatefulWidget {
  const QuizHomePage({Key? key}) : super(key: key);

  @override
  State<QuizHomePage> createState() => _QuizHomePageState();
}

class _QuizHomePageState extends State<QuizHomePage> {
  List<Icon> scoreKeeper = [];

  void checkUserAnswer (bool userPickedAnswer) {
    bool correctAnswer = quiz_Brain.getQuestionBankAnswer();
    setState(() {
      if (quiz_Brain.isFinished() == true)  {
        Alert(
          context: context,
          title: "Finished",
          desc: "you've done very well"
        ).show();

        quiz_Brain.reset();

        scoreKeeper = [];
      }
      if (userPickedAnswer == correctAnswer) {
        scoreKeeper.add(Icon(Icons.check, color: Colors.green,));
      }
      else {
        scoreKeeper.add(Icon(Icons.close, color: Colors.red,));
      }

      quiz_Brain.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        elevation: 2,
        title: Text("Quiz App"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal.shade100,
              ),
              child: Center(child: Text("Home")),
            ),
            ListTile(
              leading: Icon(Icons.book_online),
              title: Text('MCQ'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => FOUR_MCQHomePage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text('Share'),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => loginpart()));
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      quiz_Brain.getQuestionBankText(),
                      style: const TextStyle(
                          fontSize: 22
                      ),
                      textAlign: TextAlign.center,),
                  ),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                    backgroundColor: MaterialStatePropertyAll(Colors.teal)
                ),
                onPressed: () {
                  checkUserAnswer(true);
                },
                child: SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Center(child: Text('True',style: TextStyle(
                          fontSize: 16
                      ),),
                      ),
                    )),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                    backgroundColor: MaterialStatePropertyAll(Colors.red)
                ),
                onPressed: () {
                  checkUserAnswer(false);
                },
                child: SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Center(child: Text('False',style: TextStyle(
                          fontSize: 16
                      ),),
                      ),
                    )),
              ),
              SizedBox(height: 20,),
              Row(
                children: scoreKeeper,
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/