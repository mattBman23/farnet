import 'package:farnet/templateApps/ewallet/components/BotContent.dart';
import 'package:farnet/templateApps/ewallet/components/MidContent.dart';
import 'package:farnet/templateApps/ewallet/components/TopContent.dart';
import 'package:flutter/material.dart';

class EwalletMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Image.asset("assets/ewallet/images/bg_home.png"),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.all(2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TopContent(),
                    MidContent(),
                    BotContent(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// inspired from https://dribbble.com/shots/9435324-eWalle-Portable-Wallet
