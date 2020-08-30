import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "6:20 PM",
                style: GoogleFonts.ubuntu(
                  fontSize: 24,
                  color: Color(0xff1b1d28),
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 14,
              ),
              Image.asset("assets/ewallet/images/cloud.png"),
              SizedBox(
                width: 10,
              ),
              Text(
                "34° C",
                style: GoogleFonts.ubuntu(
                  fontSize: 16,
                  color: Color(0xff1B1D28),
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            "Nov.10.2020 | Wednesday",
            style: GoogleFonts.ubuntu(
              fontSize: 14,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
