import 'package:flutter/material.dart';

void main() {
  runApp(BasketBallCounter());
}

class BasketBallCounter extends StatefulWidget {
  @override
  State<BasketBallCounter> createState() => _BasketBallCounterState();
}

class _BasketBallCounterState extends State<BasketBallCounter> {
  int counterA = 0;

  int counterB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 227, 113, 6),
          title: Text(
            'Basketball Counter',
            style: TextStyle(color: Colors.black87),
          ),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(children: [
                  Text(
                    'Team A',
                    style: TextStyle(fontSize: 32),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 0),
                    child: Text(
                      '$counterA',
                      style: TextStyle(fontSize: 150),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 227, 113, 6),
                    ),
                    onPressed: () {
                      setState(() {
                        if (counterA < 99) {
                          counterA++;
                        }
                      });
                    },
                    child: Text(
                      'Add 1 Point',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 227, 113, 6)),
                    onPressed: () {
                      setState(() {
                        if (counterA < 98) {
                          counterA += 2;
                        }
                      });
                    },
                    child: Text(
                      'Add 2 Point',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 227, 113, 6)),
                    onPressed: () {
                      setState(() {
                        if (counterA < 99) {
                          counterA += 3;
                        }
                      });
                    },
                    child: Text(
                      'Add 3 Point',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  )
                ]),
                ////////////////////////////////////////// Divider////////////////////////////////////////
                SizedBox(
                  height: 420,
                  child: const VerticalDivider(
                    color: Color.fromARGB(255, 200, 199, 199),
                    thickness: 2,
                    indent: 40,
                    endIndent: 35,
                  ),
                ),
                Column(children: [
                  Text(
                    'Team B',
                    style: TextStyle(fontSize: 32),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 0),
                    child: Text(
                      '$counterB',
                      style: TextStyle(fontSize: 150),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 227, 113, 6),
                    ),
                    onPressed: () {
                      setState(() {
                        if (counterB < 99) {
                          counterB++;
                        }
                      });
                    },
                    child: Text(
                      'Add 1 Point',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 227, 113, 6)),
                    onPressed: () {
                      setState(() {
                        if (counterB < 98) {
                          counterB += 2;
                        }
                      });
                    },
                    child: Text(
                      'Add 2 Point',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 227, 113, 6)),
                    onPressed: () {
                      setState(() {
                        if (counterB < 99) {
                          counterB += 3;
                        }
                      });
                    },
                    child: Text(
                      'Add 3 Point',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  )
                ]),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 40),
                    backgroundColor: Color.fromARGB(255, 227, 113, 6)),
                onPressed: () {
                  setState(() {
                    counterA = 0;
                    counterB = 0;
                  });
                },
                child: Text(
                  'Reset',
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
