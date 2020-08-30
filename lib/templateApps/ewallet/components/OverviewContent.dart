import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OverviewContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 22, horizontal: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffF1F3F6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "\$20,600",
                style: GoogleFonts.ubuntu(
                  fontSize: 24,
                  color: Color(0xff171822),
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                "Current Balance",
                style: GoogleFonts.ubuntu(
                  fontSize: 24,
                  color: Color(0xff171822),
                  fontWeight: FontWeight.w800,
                ),
              )
            ],
          ),
          RaisedButton(
            onPressed: () {},
            elevation: 0,
            padding: EdgeInsets.all(12),
            child: Text(
              "+",
              style: TextStyle(color: Color(0xff1B1D28), fontSize: 22),
            ),
            shape: CircleBorder(),
            color: Color(0xffFFAC30),
          )
        ],
      ),
    );
  }
}
