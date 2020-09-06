import 'package:farnet/templateApps/gamingui/constants/uistyle.dart';
import 'package:farnet/templateApps/gamingui/screen/profile.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class GamingUIMain extends StatelessWidget {
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(41, 30, 83, 1),
        body: Container(
          margin: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hi Matthew',
                    style: kText,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileScreen(),
                        ),
                      );
                    },
                    child: Icon(
                      Icons.category,
                      size: 30,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(111, 0, 244, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18,
                          vertical: 8,
                        ),
                        child: Text(
                          'Games',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(81, 73, 112, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18,
                          vertical: 8,
                        ),
                        child: Text(
                          'Categories',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text(
                  'Continue Playing',
                  style: kText,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Transform(
                      transform: Matrix4.skewY(-0.05),
                      child: Container(
                        height: 160,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromRGBO(209, 4, 43, 1),
                              Color.fromRGBO(214, 61, 99, 1),
                            ],
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Angry Birds 2',
                            style: kText,
                          ),
                          Text(
                            'Level 20',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 10, right: 15, left: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircularPercentIndicator(
                                  radius: 55,
                                  lineWidth: 6,
                                  animation: true,
                                  percent: 0.2,
                                  circularStrokeCap: CircularStrokeCap.round,
                                  progressColor: Colors.black87,
                                ),
                                Transform(
                                  transform: Matrix4.skewX(-0.05),
                                  origin: Offset(50, 50),
                                  child: Material(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 30,
                                        vertical: 10,
                                      ),
                                      child: Text(
                                        'Play',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 85,
                      left: 250,
                      child: Image(
                        image: AssetImage(
                          'assets/gamingui/images/angryBird.png',
                        ),
                        height: 120,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text(
                  'Discover Games',
                  style: kText,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 45),
                child: Row(
                  children: [
                    Stack(
                      overflow: Overflow.visible,
                      children: [
                        Transform(
                          transform: Matrix4.skewY(-0.2),
                          child: Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromRGBO(234, 70, 61, 1),
                                  Color.fromRGBO(238, 109, 43, 1),
                                ],
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50, left: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Super\nMario Run',
                                style: kText,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(245, 196, 145, 1)
                                      .withOpacity(0.5),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 15,
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        '3.5',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                '100M+',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 140,
                          left: 40,
                          child: Image(
                            image:
                                AssetImage('assets/gamingui/images/mario.png'),
                            height: 100,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Stack(
                      overflow: Overflow.visible,
                      children: [
                        Transform(
                          transform: Matrix4.skewY(-0.2),
                          child: Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromRGBO(209, 145, 44, 1),
                                  Color.fromRGBO(212, 155, 101, 1),
                                ],
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50, left: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Clash \nof Clans',
                                style: kText,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.2),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 15,
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        '4.5',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                '500M+',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 140,
                          left: 40,
                          child: Image(
                            image: AssetImage(
                              'assets/gamingui/images/clashofclans.png',
                            ),
                            height: 130,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
