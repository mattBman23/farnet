import 'package:farnet/templateApps/animalPlanet/components/CustomAppbar.dart';
import 'package:farnet/templateApps/animalPlanet/constants/constants.dart';
import 'package:farnet/templateApps/animalPlanet/screens/ChoosePlan.dart';
import 'package:flutter/material.dart';

class AplanetMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            "assets/aplanet/images/elephant.jpg",
            height: screenHeight,
            fit: BoxFit.fitHeight,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CustomAppBar(),
              Padding(
                padding: EdgeInsets.only(bottom: 23, left: 32, right: 32),
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: Constants.READY_TO_WATCH,
                      style: Constants.bigHeadingTextStyle),
                  TextSpan(text: "\n"),
                  TextSpan(
                      text: Constants.READY_TO_WATCH_DESC,
                      style: Constants.bodyTextStyle),
                  TextSpan(text: "\n"),
                  TextSpan(text: "\n"),
                  TextSpan(
                      text: Constants.START_ENJOYING,
                      style: Constants.buttonTextStyle)
                ])),
              )
            ],
          ),
          Positioned(
            bottom: -35,
            right: -35,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AplanetChoosePlanScreen(),
                  ),
                );
              },
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFDAD4CC).withOpacity(0.7),
                ),
                child: Align(
                  alignment: Alignment(-0.5, -.05),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
