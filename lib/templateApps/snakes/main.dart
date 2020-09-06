import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class SnakeMain extends StatefulWidget {
  @override
  _SnakeMainState createState() => _SnakeMainState();
}

class _SnakeMainState extends State<SnakeMain> {
  static List<int> snakePosition = [45, 65, 85, 105, 125];
  static int numberOfSquares = 660;
  static int dScore = 0;
  var dDirection = 'down';

  int food = Random().nextInt(numberOfSquares);
  void generateNewFood() {
    food = Random().nextInt(numberOfSquares);
  }

  void startGame() {
    snakePosition = [45, 65, 85, 105, 125];
    Timer.periodic(Duration(milliseconds: 300), (timer) {
      updateSnake();
      if (gameOver()) {
        timer.cancel();
        _showGameOverScreen();
        dScore = 0;
      }
    });
  }

  void updateSnake() {
    setState(() {
      switch (dDirection) {
        case 'down':
          if (snakePosition.last > numberOfSquares) {
            snakePosition.add(snakePosition.last + 20 - (numberOfSquares + 20));
          } else {
            snakePosition.add(snakePosition.last + 20);
          }
          break;
        case 'up':
          if (snakePosition.last < 20) {
            snakePosition.add(snakePosition.last - 20 + (numberOfSquares + 20));
          } else {
            snakePosition.add(snakePosition.last - 20);
          }
          break;
        case 'left':
          if (snakePosition.last % 20 == 0) {
            snakePosition.add(snakePosition.last - 1 + 20);
          } else {
            snakePosition.add(snakePosition.last - 1);
          }
          break;
        case 'right':
          if ((snakePosition.last + 1) % 20 == 0) {
            snakePosition.add(snakePosition.last + 1 - 20);
          } else {
            snakePosition.add(snakePosition.last + 1);
          }
          break;
        default:
      }

      if (snakePosition.length == food) {
        generateNewFood();
        dScore++;
      } else {
        snakePosition.removeAt(0);
      }
    });
  }

  bool gameOver() {
    for (int i = 0; i < snakePosition.length; i++) {
      int count = 0;
      for (int j = 0; j < snakePosition.length; j++) {
        if (snakePosition[i] == snakePosition[j]) {
          count += 1;
        }
        if (count == 2) {
          return true;
        }
      }
    }
    return false;
  }

  void _showGameOverScreen() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("GAME OVER"),
          content: Text("Your score: " + (snakePosition.length - 5).toString()),
          actions: <Widget>[
            FlatButton(
                onPressed: () {
                  startGame();

                  Navigator.pop(context);
                },
                child: Text("Play again"))
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 23),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "SCORE: " + dScore.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    "BEST SCORE: 323",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            Expanded(
                child: GestureDetector(
              onVerticalDragUpdate: (details) {
                if (dDirection != 'up' && details.delta.dy > 0) {
                  dDirection = 'down';
                } else if (dDirection != 'down' && details.delta.dy < 0) {
                  dDirection = 'up';
                }
              },
              onHorizontalDragUpdate: (details) {
                if (dDirection != 'left' && details.delta.dx > 0) {
                  dDirection = 'right';
                } else if (dDirection != 'right' && details.delta.dx < 0) {
                  dDirection = 'left';
                }
              },
              child: Container(
                child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: numberOfSquares,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 20),
                    itemBuilder: (BuildContext context, int index) {
                      if (snakePosition.contains(index)) {
                        return Center(
                          child: Container(
                            padding: EdgeInsets.all(2),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Container(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        );
                      }
                      if (index == food) {
                        return Container(
                          padding: EdgeInsets.all(2),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Container(
                              color: Colors.green,
                            ),
                          ),
                        );
                      } else {
                        return Container(
                          padding: EdgeInsets.all(2),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Container(
                              color: Colors.grey[900],
                            ),
                          ),
                        );
                      }
                    }),
              ),
            )),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 23),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: startGame,
                    child: Text(
                      "START",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  GestureDetector(
                    onTap: startGame,
                    child: Text(
                      "PAUSE",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
