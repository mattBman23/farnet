import 'package:farnet/templateApps/travelapp/constants/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MidSec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 0.95,
        aspectRatio: 2,
        height: 238,
        autoPlay: true,
      ),
      items: TravelAppConstants.images.map((item) {
        return Builder(
          builder: (context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                children: [
                  Container(
                    height: 160,
                    width: double.infinity,
                    child: Image.network(item, fit: BoxFit.cover),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Maryland',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 14,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 14,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 14,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 14,
                          ),
                          Icon(
                            Icons.star_border,
                            color: Colors.yellow,
                            size: 14,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "USD 76",
                            style: TextStyle(color: Colors.white),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                '4.5',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              Text(
                                '(620 Review)',
                                style: TextStyle(color: Colors.white54),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
