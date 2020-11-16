import 'package:farnet/templateApps/travelapp/constants/constants.dart';
import 'package:flutter/material.dart';

class BotSec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Popular Tour",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: EdgeInsets.only(left: 16),
          child: Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                TourCard('Paris', TravelAppConstants.parisImage),
                TourCard('Berlin', TravelAppConstants.berlinImage),
                TourCard('Amsterdam', TravelAppConstants.amsterdamImage),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class TourCard extends StatelessWidget {
  final name, image;
  TourCard(this.name, this.image);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8),
      child: Container(
        height: 120,
        width: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'USD 700 | 5 Days',
              style: TextStyle(
                color: Colors.white70,
              ),
            )
          ],
        ),
      ),
    );
  }
}
