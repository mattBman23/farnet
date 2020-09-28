import 'package:farnet/templateApps/productionApp/constants/constants.dart';
import 'package:flutter/material.dart';

class FeatureSec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          GradientCard('Productivity', '102 Products',
              [Constants.pinkGradient1, Constants.pinkGradient2]),
          GradientCard('Design', '82 Products',
              [Constants.blueGradient1, Constants.blueGradient2]),
          GradientCard('Productivity', '102 Products',
              [Constants.pinkGradient1, Constants.pinkGradient2]),
          GradientCard('Design', '82 Products',
              [Constants.blueGradient1, Constants.blueGradient2]),
        ],
      ),
    );
  }
}

class GradientCard extends StatelessWidget {
  final title;
  final subTitle;
  final colors;
  GradientCard(this.title, this.subTitle, this.colors);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        height: 100.0,
        width: 280.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          gradient: LinearGradient(
              colors: colors,
              begin: Alignment.bottomLeft,
              end: Alignment.topRight),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 2.0,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32.0)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                child: Text(subTitle,
                    style:
                        TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
