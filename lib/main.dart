import 'package:flutter/material.dart';

void main() {
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
          ],
        ),
      ),
    );
  }
}
