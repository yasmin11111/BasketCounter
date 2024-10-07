// ignore_for_file: prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_const_constructors, sort_child_properties_last, must_be_immutable

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Basket());
}

class Basket extends StatefulWidget {
  @override
  State<Basket> createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  int A = 0;

  int B = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Points Counter",
                style: TextStyle(color: Color(0xffF7E4E3), fontSize: 35),
              ),
            ),
          ),
          backgroundColor: Color(0xff780505),
        ),
        body: Padding(
          padding: const EdgeInsets.all(6.0),
          child: SizedBox(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xffF7E4E3),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      margin: EdgeInsets.all(5),
                      height: 650,
                      width: 190,
                      child: Column(
                        children: [
                          Text("Team A",
                              style: TextStyle(
                                  color: Color(0xff780505), fontSize: 40)),
                          Text("$A",
                              style: TextStyle(
                                  color: Color(0xff780505), fontSize: 100)),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              width: 200,
                              child: FloatingActionButton(
                                child: Text(
                                  "Add 1 Point",
                                  style: TextStyle(
                                      color: Color(0xffF7E4E3), fontSize: 25),
                                ),
                                backgroundColor: Color(0xff780505),
                                onPressed: () {
                                  A++;
                                  setState(() {});
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              width: 200,
                              child: FloatingActionButton(
                                child: Text(
                                  "Add 2 Point",
                                  style: TextStyle(
                                      color: Color(0xffF7E4E3), fontSize: 25),
                                ),
                                backgroundColor: Color(0xff780505),
                                onPressed: () {
                                  A = A + 2;
                                  setState(() {});
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              width: 200,
                              child: FloatingActionButton(
                                child: Text(
                                  "Add 3 Point",
                                  style: TextStyle(
                                      color: Color(0xffF7E4E3), fontSize: 25),
                                ),
                                backgroundColor: Color(0xff780505),
                                onPressed: () {
                                  A = A + 3;
                                  setState(() {});
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xffF7E4E3),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      margin: EdgeInsets.all(10),
                      height: 650,
                      width: 175,
                      child: Column(
                        children: [
                          Text(
                            "Team B",
                            style: TextStyle(
                                color: Color(0xff780505), fontSize: 38),
                          ),
                          Text("$B",
                              style: TextStyle(
                                  color: Color(0xff780505), fontSize: 100)),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              width: 200,
                              child: FloatingActionButton(
                                child: Text(
                                  "Add 1 Point",
                                  style: TextStyle(
                                      color: Color(0xffF7E4E3), fontSize: 20),
                                ),
                                backgroundColor: Color(0xff780505),
                                onPressed: () {
                                  B++;
                                  setState(() {});
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              width: 200,
                              child: FloatingActionButton(
                                child: Text(
                                  "Add 2 Point",
                                  style: TextStyle(
                                      color: Color(0xffF7E4E3), fontSize: 20),
                                ),
                                backgroundColor: Color(0xff780505),
                                onPressed: () {
                                  B = B + 2;
                                  setState(() {});
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              width: 200,
                              child: FloatingActionButton(
                                child: Text(
                                  "Add 3 Point",
                                  style: TextStyle(
                                      color: Color(0xffF7E4E3), fontSize: 20),
                                ),
                                backgroundColor: Color(0xff780505),
                                onPressed: () {
                                  B = B + 3;
                                  setState(() {});
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  height: 50,
                  width: 200,
                  child: FloatingActionButton(
                    child: Text(
                      "Reset",
                      style: TextStyle(color: Color(0xffF7E4E3), fontSize: 35),
                    ),
                    backgroundColor: Color(0xff780505),
                    onPressed: () {
                      A = 0;
                      B = 0;
                      setState(() {});
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
