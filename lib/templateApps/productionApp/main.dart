import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:farnet/templateApps/productionApp/components/blogSec.dart';
import 'package:farnet/templateApps/productionApp/components/featureSec.dart';
import 'package:farnet/templateApps/productionApp/components/profileSec.dart';
import 'package:farnet/templateApps/productionApp/components/trendingSec.dart';
import 'package:farnet/templateApps/productionApp/constants/constants.dart';
import 'package:flutter/material.dart';

class ProdAppMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bgColor,
      bottomNavigationBar: BottomAppBar(
        color: Constants.appBarColor,
        notchMargin: 12,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 42),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.home,
                  color: Constants.blueGradient1,
                  size: 32,
                ),
                Icon(
                  Icons.shuffle,
                  color: Colors.grey,
                  size: 32,
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Arc(
                height: 30,
                child: Container(
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Constants.blueGradient1,
                        Constants.blueGradient2
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 32.0),
                    ProfileSec(),
                    SizedBox(height: 32.0),
                    Text(
                      'Trending',
                      style: Constants.headerText,
                    ),
                    SizedBox(height: 8.0),
                    TrendingSec(),
                    SizedBox(height: 16.0),
                    Text('Featured', style: Constants.headerText),
                    SizedBox(height: 8.0),
                    FeatureSec(),
                    SizedBox(height: 16.0),
                    Text(
                      'Recent Blogs',
                      style: Constants.headerText,
                    ),
                    SizedBox(height: 8.0),
                    BlogSec(),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
