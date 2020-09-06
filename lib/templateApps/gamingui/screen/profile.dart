import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:farnet/templateApps/gamingui/constants/uistyle.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(41, 30, 83, 1),
        floatingActionButton: FabCircularMenu(
          alignment: Alignment.topRight,
          ringDiameter: 400,
          ringWidth: 75,
          fabElevation: 5,
          ringColor: Color.fromRGBO(209, 164, 231, 1).withOpacity(0.5),
          fabColor: Colors.white,
          fabOpenIcon: Icon(
            Icons.supervised_user_circle,
            color: Colors.black,
            size: 50,
          ),
          fabCloseIcon: Icon(
            Icons.cancel,
            color: Colors.black,
            size: 50,
          ),
          children: [
            Image(
              image: AssetImage('assets/gamingui/images/face1.png'),
              height: 60,
            ),
            Image(
              image: AssetImage('assets/gamingui/images/face2.png'),
              height: 60,
            ),
            Image(
              image: AssetImage('assets/gamingui/images/face3.png'),
              height: 60,
            ),
            Image(
              image: AssetImage('assets/gamingui/images/face4.png'),
              height: 60,
            )
          ],
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Christina',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 27,
                          ),
                        ),
                        Text(
                          '@ch_jones',
                          style: kSmallText,
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  '32',
                  style: kLargeText,
                ),
                Text(
                  'Followers',
                  style: kSmallText,
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: Colors.white.withOpacity(0.7),
                  endIndent: 200,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '19',
                  style: kLargeText,
                ),
                Text(
                  'Following',
                  style: kSmallText,
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: Colors.white.withOpacity(0.7),
                  endIndent: 200,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Level 20',
                  style: kLargeText,
                ),
                Text(
                  'Since 5 days',
                  style: kSmallText,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Leaderboard',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 30,
                          height: 140,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image(
                          image: AssetImage('assets/gamingui/images/face1.png'),
                          height: 35,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 30,
                          height: 130,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image(
                          image: AssetImage('assets/gamingui/images/face2.png'),
                          height: 35,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 30,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image(
                          image: AssetImage('assets/gamingui/images/face3.png'),
                          height: 35,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 30,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image(
                          image: AssetImage('assets/gamingui/images/face4.png'),
                          height: 35,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
