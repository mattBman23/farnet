import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Image.asset(
              "assets/ewallet/images/logo.png",
              width: 34,
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              "eWallet",
              style: GoogleFonts.ubuntu(
                fontSize: 22,
                color: Color(0xff3A4276),
                fontWeight: FontWeight.w800,
              ),
            )
          ],
        ),
        Image.asset(
          "assets/ewallet/images/menu.png",
          width: 16,
        )
      ],
    );
  }
}
