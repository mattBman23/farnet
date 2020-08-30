import 'package:farnet/templateApps/ewallet/components/HeaderContent.dart';
import 'package:farnet/templateApps/ewallet/components/OverviewContent.dart';
import 'package:farnet/templateApps/ewallet/components/SendMoneyContent.dart';
import 'package:farnet/templateApps/ewallet/components/ServicesContent.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EwalletDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 18, right: 18, top: 34),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              HeaderContent(),
              SizedBox(
                height: 38,
              ),
              Text(
                "Account Overview",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Color(0xff3A4276),
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              OverviewContent(),
              SizedBox(
                height: 34,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Send Money",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Color(0xff3A4276),
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Image.asset(
                    "assets/ewallet/images/bar_code.png",
                    width: 15,
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              SendMoneyContent(),
              SizedBox(
                height: 34,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Services",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Color(0xff3A4276),
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Image.asset(
                    "assets/ewallet/images/adjust.png",
                    width: 16,
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                child: ServicesContent(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
