import 'package:farnet/templateApps/animalPlanet/components/CustomAppbar.dart';
import 'package:farnet/templateApps/animalPlanet/constants/constants.dart';
import 'package:flutter/material.dart';

class AplanetDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB98959),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.4,
            child: Container(
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    "assets/aplanet/images/elephant.jpg",
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fitWidth,
                  ),
                  Column(
                    children: <Widget>[
                      CustomAppBar(),
                      Expanded(
                          child: Align(
                        alignment: Alignment(0, -0.6),
                        child: Text(
                          Constants.welcomeToAPlanet,
                          style: Constants.bigHeadingTextStyle,
                          textAlign: TextAlign.center,
                        ),
                      ))
                    ],
                  )
                ],
              ),
            ),
          ),
          FractionallySizedBox(
              alignment: Alignment.bottomCenter,
              heightFactor: 0.65,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(40),
                  ),
                  color: Color(0xFFB98959),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      child: Text(
                        Constants.relatedToYou,
                        style: Constants.buttonTextStyle,
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            MidAnimals(
                              dTitle: Constants.lifeWithATiger,
                              imgPath: "assets/aplanet/images/tiger.jpg",
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            MidAnimals(
                              dTitle: Constants.wildAnimals,
                              imgPath:
                                  "assets/aplanet/images/wild_animals.jpeg",
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      child: Text(
                        Constants.quickCategories,
                        style: Constants.titleTextStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          BottomAnimals(
                            animalname: Constants.bear,
                            imgPath: "assets/aplanet/images/bear.png",
                          ),
                          BottomAnimals(
                            animalname: Constants.lion,
                            imgPath: "assets/aplanet/images/lion.png",
                          ),
                          BottomAnimals(
                            animalname: Constants.reptiles,
                            imgPath: "assets/aplanet/images/reptiles.png",
                          ),
                          BottomAnimals(
                            animalname: Constants.pets,
                            imgPath: "assets/aplanet/images/pets.png",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

class MidAnimals extends StatelessWidget {
  final String dTitle, imgPath;

  const MidAnimals({Key key, this.dTitle, this.imgPath}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16),
      width: MediaQuery.of(context).size.width * 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
              child: ClipRRect(
            child: Image.asset(
              imgPath,
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width * 0.5,
            ),
            borderRadius: BorderRadius.circular(12),
          )),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 6),
            child: Text(
              dTitle,
              style: Constants.titleTextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 6),
            child: Text(
              Constants.loremIpsum,
              style: Constants.body3TextStyle,
            ),
          )
        ],
      ),
    );
  }
}

class BottomAnimals extends StatelessWidget {
  final String animalname, imgPath;

  const BottomAnimals({Key key, this.animalname, this.imgPath})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color(0xFF8C5835),
          ),
          child: Image.asset(
            imgPath,
            height: 50,
            width: 50,
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          animalname,
          style: Constants.body2TextStyle,
        ),
      ],
    );
  }
}
