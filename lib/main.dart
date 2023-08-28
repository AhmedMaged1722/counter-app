import 'package:flutter/material.dart';

void main() {
  runApp(const PointsCounter());
}

// ignore: must_be_immutable
class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pointers Counters'),
          backgroundColor: const Color(0xFF110120),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(fontSize: 42),
                      ),
                      Text(
                        '$teamAPoints',
                        style: const TextStyle(
                            fontSize: 90, fontStyle: FontStyle.normal),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            primary: const Color(0xFF393053),
                            onPrimary: Colors.white,
                            minimumSize: const Size(160, 40)),
                        onPressed: () {
                          teamAPoints++;
                          setState(() {});
                        },
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            primary: const Color(0xFF393053),
                            onPrimary: Colors.white,
                            minimumSize: const Size(160, 40)),
                        onPressed: () {
                          teamAPoints += 2;
                          setState(() {});
                        },
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            primary: const Color(0xFF393053),
                            onPrimary: Colors.white,
                            minimumSize: const Size(160, 40)),
                        onPressed: () {
                          teamAPoints += 3;
                          setState(() {});
                        },
                        child: const Text(
                          'Add 3 Point',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: const VerticalDivider(
                    color: Colors.black,
                    thickness: 1.5,
                    indent: 35,
                    endIndent: 29,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(fontSize: 42),
                      ),
                      Text(
                        '$teamBPoints',
                        style: const TextStyle(
                            fontSize: 90, fontStyle: FontStyle.normal),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            primary: const Color(0xFF393053),
                            onPrimary: Colors.white,
                            minimumSize: const Size(160, 40)),
                        onPressed: () {
                          teamBPoints++;
                          setState(() {});
                        },
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            primary: const Color(0xFF393053),
                            onPrimary: Colors.white,
                            minimumSize: const Size(160, 40)),
                        onPressed: () {
                          teamBPoints += 2;
                          setState(() {});
                        },
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            primary: const Color(0xFF393053),
                            onPrimary: Colors.white,
                            minimumSize: const Size(160, 40)),
                        onPressed: () {
                          teamBPoints += 3;
                          setState(() {});
                        },
                        child: const Text(
                          'Add 3 Point',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  primary: const Color(0xFF393053),
                  onPrimary: Colors.white,
                  minimumSize: const Size(367, 60)),
              onPressed: () {
                teamAPoints = 0;
                teamBPoints = 0;
                setState(() {});
              },
              child: const Text(
                'Reset',
                style: TextStyle(fontSize: 32),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
