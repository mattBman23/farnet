import 'package:farnet/templateApps/animalPlanet/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 48, left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: Constants.APP_NAME,
                  style: Constants.appNameTextStyle,
                ),
                TextSpan(text: "\n"),
                TextSpan(
                  text: Constants.TAG_LINE,
                  style: Constants.appNameTextStyle,
                )
              ],
            ),
          ),
          Icon(
            Icons.menu,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
