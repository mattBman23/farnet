import 'package:farnet/templateApps/animalPlanet/constants/constants.dart';
import 'package:flutter/material.dart';

class AplanetSubContainer extends StatelessWidget {
  final String amount, text, imgPath;

  const AplanetSubContainer({Key key, this.amount, this.text, this.imgPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3),
                BlendMode.srcATop,
              ),
              child: Image.asset(
                imgPath,
                height: screenHeight * 0.7 / 4,
                width: screenWidth - 32,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            right: 23,
            left: 23,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  text,
                  style: Constants.subTextTextStyle,
                ),
                Text(
                  amount,
                  style: Constants.subAmountTextStyle,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
