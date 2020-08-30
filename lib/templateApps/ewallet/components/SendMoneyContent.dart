import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SendMoneyContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 80,
            padding: EdgeInsets.all(18),
            child: RaisedButton(
              onPressed: () {},
              elevation: 0,
              padding: EdgeInsets.all(12),
              child: Text(
                "+",
                style: GoogleFonts.ubuntu(
                  fontSize: 22,
                  color: Color(0xff1B1D28),
                ),
              ),
              shape: CircleBorder(),
              color: Color(0xffFFAC30),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 16),
            padding: EdgeInsets.all(16),
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffF1F3F6),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xffD8D9E4))),
                  child: Image.asset(
                    "assets/ewallet/images/avatar_1.png",
                    width: 36,
                  ),
                ),
                Text(
                  "Mike",
                  style: GoogleFonts.ubuntu(
                    fontSize: 12,
                    color: Color(0xff3A4276),
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(right: 10),
              padding: EdgeInsets.all(16),
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffF1F3F6),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color(0xffD8D9E4),
                      ),
                    ),
                    child: Image.asset(
                      "assets/ewallet/images/avatar_2.png",
                      width: 36,
                    ),
                  ),
                  Text(
                    "Josh",
                    style: GoogleFonts.ubuntu(
                      fontSize: 12,
                      color: Color(0xff3A4276),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              )),
          Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.all(16),
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffF1F3F6),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color(0xffD8D9E4),
                    ),
                  ),
                  child: Image.asset(
                    "assets/ewallet/images/avatar_3.png",
                    width: 36,
                  ),
                ),
                Text(
                  "Ashley",
                  style: GoogleFonts.ubuntu(
                    fontSize: 12,
                    color: Color(0xff3A4276),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
