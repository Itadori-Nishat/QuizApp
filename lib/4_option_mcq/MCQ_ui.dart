import 'package:flutter/material.dart';
import 'package:quiz_app/4_option_mcq/MCQ_BRAIN.dart';

class McqUI extends StatefulWidget {
  const McqUI({Key? key}) : super(key: key);

  @override
  State<McqUI> createState() => _McqUIState();
}

class _McqUIState extends State<McqUI> {
  List<McqQuestion> questions_list= getMcqQuestion();
  List selectedAns = [];
  int questionNumber = 0;
  // McqAnswer? selectedAns;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Question ${questionNumber+1}/${questions_list.length.toString()}",style: TextStyle(
          fontSize: 20
        ),),
        SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("1."),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9 - 15,
              child: Text(questions_list[questionNumber].questionText,
                style: TextStyle(
                    fontSize: 17,
                    fontFamily: "HindSiliguri",
                    color: Colors.teal.shade700),
              ),
            )
          ],
        ),
        MaterialButton(
            onPressed: () {
              setState(() {
                // bool correctMcqAns = selectedAns;
                // if (correctMcqAns == true) {
                //   print("correct");
                // } else {
                //   print("wrong");
                // }
                setState(() {
                  questionNumber++;
                });

              });
            },
            child: Row(
              children: [
                Icon(
                  Icons.circle_outlined,
                  size: 18,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 5,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8 - 10,
                  child: Text(questions_list[questionNumber].answerList.map((e) => (e.mcq_answerText)).toString(),
                    style: TextStyle(fontSize: 15, fontFamily: "HindSiliguri"),
                  ),
                )
              ],
            )),
        MaterialButton(
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.circle_outlined,
                  size: 18,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 5,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8 - 10,
                  child: Text("f",
                    style: TextStyle(fontSize: 15, fontFamily: "HindSiliguri"),
                  ),
                )
              ],
            )),
        MaterialButton(
            onPressed: () {
            },
            child: Row(
              children: [
                Icon(
                  Icons.circle_outlined,
                  size: 18,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 5,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8 - 10,
                  child: Text("g",
                    style: TextStyle(fontSize: 15, fontFamily: "HindSiliguri"),
                  ),
                )
              ],
            )),
        MaterialButton(
            onPressed: () {
            },
            child: Row(
              children: [
                Icon(
                  Icons.circle_outlined,
                  size: 18,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 5,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8 - 10,
                  child: Text("j",
                    style: TextStyle(fontSize: 15, fontFamily: "HindSiliguri"),
                  ),
                )
              ],
            )),
      ],
    );
  }
}
