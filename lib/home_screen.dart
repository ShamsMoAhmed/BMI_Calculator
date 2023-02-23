// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/controllers/app_setting.dart';
import 'package:bmi_calculator/models/calculate_model.dart';
import 'package:bmi_calculator/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'result_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var calculate = Calculate(height: 160, weight: 60, age: 25);

  @override
  Widget build(BuildContext context) {
    final setting = Provider.of<AppSettingController>(context);
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(20, 33, 170, 243),
          title: Center(
              child: Text(
            "BMI Calculator",
            style: TextStyle(fontSize: 23),
          )),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: calculate.gender == "m"
                              ? Colors.white12
                              : Colors.white24,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(17.0),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                calculate.gender = "m";
                              });
                            },
                            child: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Icon(
                                  Icons.male_outlined,
                                  size: 75,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "MALE",
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: calculate.gender == "f"
                              ? Colors.white12
                              : Colors.white24,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(17.0),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                calculate.gender = "f";
                              });
                            },
                            child: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Icon(
                                  Icons.female_outlined,
                                  size: 75,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "FEMALE",
                                    //   style: TextStyle(
                                    //       fontSize: 21, color: Colors.grey),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white24,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "HEIGHT",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                      Text(
                        calculate.height.toStringAsFixed(0) + " cm",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      Slider(
                          inactiveColor: Colors.grey,
                          activeColor: Colors.red,
                          thumbColor: Colors.red,
                          min: 120,
                          max: 220,
                          value: calculate.height,
                          onChanged: (val) {
                            setState(() {
                              calculate.height = val;
                            });
                          })
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white24,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Column(
                          children: [
                            Text(
                              "WEIGHT",
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                calculate.weight.toStringAsFixed(0),
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Row(
                              children: [
                                CircleButtonWidget(
                                  onTap: () {
                                    setState(() {
                                      calculate.weight -= 1;
                                    });
                                  },
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                        fontSize: 33,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                CircleButtonWidget(
                                  onTap: () {
                                    setState(() {
                                      calculate.weight += 1;
                                    });
                                  },
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white24,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text("AGE"),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                calculate.age.toString(),
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Row(
                              children: [
                                CircleButtonWidget(
                                  onTap: () {
                                    setState(() {
                                      calculate.age -= 1;
                                    });
                                  },
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                        fontSize: 33,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                CircleButtonWidget(
                                  onTap: () {
                                    setState(() {
                                      calculate.age += 1;
                                    });
                                  },
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
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
                          MaterialPageRoute(
                              builder: (_) => ResultScreen(
                                    calculate: calculate,
                                  )),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "                 CALCULATE                  ",
                          // style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ),
                  ),
                ),
                Switch(
                    value: setting.isDarkMode,
                    onChanged: (b) {
                      setting.changeTheme();
                    }),
              ],
            ),
          ),
        ));
  }
}
