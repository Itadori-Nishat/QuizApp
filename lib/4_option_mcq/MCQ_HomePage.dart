import 'package:flutter/material.dart';

import 'MCQ_ui.dart';

class FOUR_MCQHomePage extends StatefulWidget {
  const FOUR_MCQHomePage({Key? key}) : super(key: key);

  @override
  State<FOUR_MCQHomePage> createState() => _FOUR_MCQHomePageState();
}

class _FOUR_MCQHomePageState extends State<FOUR_MCQHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text("MCQ"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              McqUI(),
            ],
          ),
        ),
      ),
    );
  }
}
