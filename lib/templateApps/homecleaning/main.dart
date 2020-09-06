import 'package:farnet/templateApps/homecleaning/constants/colorScheme.dart';
import 'package:farnet/templateApps/homecleaning/screens/home.dart';
import 'package:flutter/material.dart';

class HomecleaningMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: {
        '/mainpage': (context) => HomePage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purple,
      body: Column(
        children: [
          Container(
            width: 100,
            height: 50,
            margin: EdgeInsets.only(top: 40),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/homecleaning/image/logo.png',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Clean Home\nClean Life",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Book Cleans At The Comfort \nOf Your Home",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 350,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/homecleaning/image/splash.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                    ),
                    color: Colors.white,
                  ),
                  child: Text(
                    'Continue...',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: purple,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/mainpage');
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
