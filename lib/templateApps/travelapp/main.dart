import 'package:farnet/templateApps/travelapp/components/botSec.dart';
import 'package:farnet/templateApps/travelapp/components/midSec.dart';
import 'package:farnet/templateApps/travelapp/components/topSec.dart';
import 'package:flutter/material.dart';

class TravelAppMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1e1359),
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor: Color(0xFF382f6e),
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(label: "opA", icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: "opB",
                icon: Icon(
                  Icons.place,
                  color: Colors.grey.withOpacity(0.6),
                )),
            BottomNavigationBarItem(
              label: "opC",
              icon: Icon(
                Icons.person,
                color: Colors.grey.withOpacity(0.6),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 16,
          ),
          TopSec(),
          SizedBox(height: 12),
          MidSec(),
          BotSec(),
        ],
      ),
    );
  }
}
