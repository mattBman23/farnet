import 'package:farnet/templateApps/animalPlanet/components/CustomAppbar.dart';
import 'package:farnet/templateApps/animalPlanet/components/SubContainer.dart';
import 'package:farnet/templateApps/animalPlanet/constants/constants.dart';
import 'package:farnet/templateApps/animalPlanet/screens/Dashboard.dart';
import 'package:flutter/material.dart';

class AplanetChoosePlanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFB98959),
      body: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                child: Text(
                  Constants.chooseAPlan,
                  style: Constants.headingTextStyle,
                ),
              ),
              AplanetSubContainer(
                text: Constants.weekSubscription,
                amount: "1.99",
                imgPath: "assets/aplanet/images/weekly.jpg",
              ),
              AplanetSubContainer(
                text: Constants.oneMonthSubscription,
                amount: "4.99",
                imgPath: "assets/aplanet/images/monthly.jpg",
              ),
              AplanetSubContainer(
                text: Constants.threeMonthSubscription,
                amount: "9.99",
                imgPath: "assets/aplanet/images/3monthly.jpg",
              )
            ],
          ),
          Positioned(
            bottom: 48,
            left: 18,
            right: 0,
            child: Row(
              children: <Widget>[
                Text(
                  Constants.LAST_STEP_TO_ENJOY,
                  style: Constants.bodyTextStyle,
                )
              ],
            ),
          ),
          Positioned(
            bottom: -35,
            right: -35,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AplanetDashboard(),
                  ),
                );
              },
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFDAD4CC).withOpacity(0.7)),
                child: Align(
                  alignment: Alignment(-0.5, -0.5),
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
