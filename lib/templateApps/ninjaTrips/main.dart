import 'package:farnet/templateApps/ninjaTrips/shared/screenTitle.dart';
import 'package:farnet/templateApps/ninjaTrips/shared/tripList.dart';
import 'package:flutter/material.dart';

class NinjaTripMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/ninjatrip/images/bg.png'),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topLeft),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 160,
              child: ScreenTitle(
                text: 'Ninja Trips',
              ),
            ),
            Flexible(
              child: TripList(),
            )
          ],
        ),
      ),
    );
  }
}
