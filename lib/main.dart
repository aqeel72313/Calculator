import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String display = "0";
  String operator = "";
  String firstNumber = "";
  bool shouldResetDisplay = false;

  Widget calculatorButton(String text) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(5),
        child: GestureDetector(
          onTap: () {
            setState(() {
              if (shouldResetDisplay) {
                display = text;
                shouldResetDisplay = false;
              } else if (display == "0") {
                display = text;
              } else {
                display = display + text;
              }
            });
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(text, style: TextStyle(fontSize: 24)),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: Colors.grey.shade100,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Calculator")),
        body: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.all(20),
                child: Text(display, style: TextStyle(fontSize: 40)),
              ),
            ),
            // Row 1
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              display = "0";
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text("AC", style: TextStyle(fontSize: 24)),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text("±", style: TextStyle(fontSize: 24)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              firstNumber = display;
                              operator = "%";
                              shouldResetDisplay = true;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text("%", style: TextStyle(fontSize: 24)),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              firstNumber = display;
                              operator = "÷";
                              shouldResetDisplay = true;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text("÷", style: TextStyle(fontSize: 24)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Row 2
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    calculatorButton("7"),
                    calculatorButton("8"),
                    calculatorButton("9"),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              firstNumber = display;
                              operator = "×";
                              shouldResetDisplay = true;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text("×", style: TextStyle(fontSize: 24)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Row 3
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    calculatorButton("4"),
                    calculatorButton("5"),
                    calculatorButton("6"),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              firstNumber = display;
                              operator = "-";
                              shouldResetDisplay = true;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text("-", style: TextStyle(fontSize: 24)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Row 4
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    calculatorButton("1"),
                    calculatorButton("2"),
                    calculatorButton("3"),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              firstNumber = display;
                              operator = "+";
                              shouldResetDisplay = true;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text("+", style: TextStyle(fontSize: 24)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Row 5
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text("0", style: TextStyle(fontSize: 24)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(".", style: TextStyle(fontSize: 24)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              if (operator == "+") {
                                double num1 = double.parse(firstNumber);
                                double num2 = double.parse(display);
                                double result = num1 + num2;
                                display = result.toString();
                              } else if (operator == "-") {
                                double num1 = double.parse(firstNumber);
                                double num2 = double.parse(display);
                                double result = num1 - num2;
                                display = result.toString();
                              } else if (operator == "×") {
                                double num1 = double.parse(firstNumber);
                                double num2 = double.parse(display);
                                double result = num1 * num2;
                                display = result.toString();
                              } else if (operator == "÷") {
                                double num1 = double.parse(firstNumber);
                                double num2 = double.parse(display);
                                double result = num1 / num2;
                                display = result.toString();
                              } else if (operator == "%") {
                                double num1 = double.parse(firstNumber);
                                double num2 = double.parse(display);
                                double result = num1 % num2;
                                display = result.toString();
                              }
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text("=", style: TextStyle(fontSize: 24)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
