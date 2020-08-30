import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MidContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset("assets/ewallet/images/logo.png"),
          SizedBox(
            height: 18,
          ),
          Text(
            "eWallet",
            style: GoogleFonts.ubuntu(
              fontSize: 22,
              color: Color(0xff1B1D28),
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            "Open an E-wallet account. \n\nJoin for free.",
            style: GoogleFonts.ubuntu(
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
