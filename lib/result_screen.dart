// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/home_screen.dart';
import 'package:bmi_calculator/models/calculate_model.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final Calculate calculate;
  const ResultScreen({Key? key, required this.calculate}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(20, 33, 170, 243),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(20, 33, 170, 243),
        title: Center(
          child: Text(
            "Result",
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Center(
                      child: Text(
                        widget.calculate.getText(),
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Center(
                    child: Text(
                      widget.calculate.result(),
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
              ),
              Center(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Center(
                      child: Text(
                        widget.calculate.getAdvice(),
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.red,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => HomeScreen()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Center(
                        child: Text(
                          "RE_CALCULATE",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
