import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CalculatorApp',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CalculatorHomePage(),
    );
  }
}

class CalculatorHomePage extends StatefulWidget {
  @override
  _CalculatorHomePageState createState() => _CalculatorHomePageState();
}

class _CalculatorHomePageState extends State<CalculatorHomePage> {
  String display = '';
  double operand1 = 0;
  double operand2 = 0;
  String operator = '';

  // Adding the button menu, uses Container, Column and Row.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CalculatorApp')),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(24),
              child: Text(
                display,
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            children: [
              buildButton('7'),
              buildButton('8'),
              buildButton('9'),
              buildButton('/'),
            ],
          ),
          Row(
            children: [
              buildButton('4'),
              buildButton('5'),
              buildButton('6'),
              buildButton('*'),
            ],
          ),
          Row(
            children: [
              buildButton('1'),
              buildButton('2'),
              buildButton('3'),
              buildButton('-'),
            ],
          ),
          Row(
            children: [
              buildButton('0'),
              buildButton('C'),
              buildButton('='),
              buildButton('+'),
            ],
          ),
        ],
      ),
    );
  }

  // Actual button functionality
  Widget buildButton(String text) {
    return Expanded(
      // Using InkWell for the squiggle effect
      child: InkWell(
        onTap: () {
          // Using the text on the button for the function calls
          // Still haven't added the functions though
          if (text == 'C') {
            // will be clear();
          } else if (text == '=') {
            // will be calculate();
          } else if ('+-*/'.contains(text)) {
            // will be operatorClick(text);
          } else {
            // will be numClick(text);
          }
        },
        child: Container(
          padding: EdgeInsets.all(24),
          child: Text(text, style: TextStyle(fontSize: 32)),
        ),
      ),
    );
  }
}
