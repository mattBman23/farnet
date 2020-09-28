import 'package:farnet/templateApps/productionApp/constants/constants.dart';
import 'package:flutter/material.dart';

class TrendingSec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ItemCard('Slack', Constants.slack, 'Business', '1350'),
          ItemCard('Sketch', Constants.sketch, 'Design Tools', '1190'),
          ItemCard('PhotoShop', Constants.photoshop, 'Photoshop', '782'),
          ItemCard('Slack', Constants.slack, 'Business', '1350'),
        ],
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final name, image, subtitle, upvotes;

  const ItemCard(this.name, this.image, this.subtitle, this.upvotes);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8),
      child: Container(
        height: 160,
        width: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Constants.buttonColor.withOpacity(0.8),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Container(
              width: 60,
              height: 60,
              child: Image.network(image),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              name,
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 2.0,
            ),
            Text(
              subtitle,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.6), fontSize: 12.0),
            ),
            SizedBox(
              height: 4.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: Constants.buttonColor,
                ),
                child: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.arrow_upward,
                        color: Colors.green,
                        size: 14.0,
                      ),
                      Text(
                        upvotes,
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
