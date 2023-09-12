import 'package:flutter/material.dart';
//import 'package:grade_tool_assignment/gradeCalculator.dart';

void main() {
  //var calculator = GradeCalculator();  //Struggling to implement this in the button COME BACK TO THIS
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    Widget enterButton = Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: ElevatedButton(
          onPressed: () {
            //Validate should return the letter grade.
          },
          child: const Text("Enter"),
        ));
    Widget textSection = Container(
        padding: const EdgeInsets.all(22),
        child: const Text(
          'Enter your grade in number form, then press enter and '
          'the calculator will tell you what your letter grade is.',
          softWrap: true,
        ));
    Widget textEnterForm = TextFormField(
      decoration: const InputDecoration(labelText: 'Enter your grade score'),
    );
    Widget outputForm = Container(
        padding: const EdgeInsets.all(32),
        child: Text('Your grade is !')); //NOT A CONSTANT THIS NEEDS TO CHANGE

    //Find a way to reveal this container after the button is pressed.
    return MaterialApp(
      title: 'Grade Tool',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Grade Tool'),
        ),
        body: ListView(
          children: [
            textSection,
            textEnterForm,
            enterButton,
            outputForm,
          ],
        ),
      ),
    );
  }
}
