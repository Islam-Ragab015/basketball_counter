import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int teamAScore = 0;

  int teamBScore = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "BasketBall Counter",
            style: TextStyle(fontSize: 20, fontFamily: "Oswald"),
          ),
          leading: const Icon(Icons.sports_basketball),
          backgroundColor: const Color(0xFF8B4513),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Team A column
                    Column(children: [
                      const Text("Team A",
                          style: TextStyle(
                            fontSize: 35,
                          )),
                      Text("$teamAScore",
                          style: const TextStyle(
                            fontSize: 140,
                          )),
                      // Buttons column for Team A
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 120,
                            child: MaterialButton(
                              color: const Color(0xFF8B4513),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              splashColor: Colors.orangeAccent,
                              textColor: Colors.white,
                              onPressed: () {
                                setState(() {
                                  teamAScore++;
                                });
                              },
                              child: const Text('Add 1 Point'),
                            ),
                          ),
                          SizedBox(
                            width: 120,
                            child: MaterialButton(
                              color: const Color(0xFF8B4513),
                              height: 40,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              splashColor: Colors.orangeAccent,
                              textColor: Colors.white,
                              onPressed: () {
                                setState(() {
                                  teamAScore += 2;
                                });
                              },
                              child: const Text('Add 2 Points'),
                            ),
                          ),
                          SizedBox(
                            width: 120,
                            child: MaterialButton(
                              color: const Color(0xFF8B4513),
                              height: 40,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              splashColor: Colors.orangeAccent,
                              textColor: Colors.white,
                              onPressed: () {
                                setState(() {
                                  teamAScore += 3;
                                });
                              },
                              child: const Text('Add 3 Points'),
                            ),
                          ),
                        ],
                      ),
                    ]),
                    const VerticalDivider(
                      color: Colors.grey,
                      thickness: 2,
                      indent: 10,
                    ),
                    // Team B column
                    Column(children: [
                      const Text("Team B",
                          style: TextStyle(
                            fontSize: 35,
                          )),
                      Text("$teamBScore",
                          style: const TextStyle(
                            fontSize: 140,
                          )),
                      // Buttons column for Team B
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 120,
                            child: MaterialButton(
                              color: const Color(0xFF8B4513),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              splashColor: Colors.orangeAccent,
                              textColor: Colors.white,
                              onPressed: () {
                                setState(() {
                                  teamBScore++;
                                });
                              },
                              child: const Text('Add 1 Point'),
                            ),
                          ),
                          SizedBox(
                            width: 120,
                            child: MaterialButton(
                              color: const Color(0xFF8B4513),
                              height: 40,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              splashColor: Colors.orangeAccent,
                              textColor: Colors.white,
                              onPressed: () {
                                setState(() {
                                  teamBScore += 2;
                                });
                              },
                              child: const Text('Add 2 Points'),
                            ),
                          ),
                          SizedBox(
                            width: 120,
                            child: MaterialButton(
                              color: const Color(0xFF8B4513),
                              height: 40,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              splashColor: Colors.orangeAccent,
                              textColor: Colors.white,
                              onPressed: () {
                                setState(() {
                                  teamBScore += 3;
                                });
                              },
                              child: const Text('Add 3 Points'),
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ],
                ),
              ),
              // Reset button
              SizedBox(
                width: 150,
                height: 50,
                child: MaterialButton(
                  color: const Color(0xFF8B4513),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  splashColor: Colors.orangeAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      teamAScore = 0;
                      teamBScore = 0;
                    });
                  },
                  child: const Text(
                    'Start Over',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
