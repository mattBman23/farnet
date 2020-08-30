import 'package:farnet/templateApps/ewallet/screen/detail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BotContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32),
      child: Column(
        children: <Widget>[
          MaterialButton(
            elevation: 0,
            color: Color(0xFFFFAC30),
            height: 50,
            minWidth: 200,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EwalletDetail(),
                ),
              );
            },
            child: Text(
              "Sign In",
              style: GoogleFonts.ubuntu(
                fontSize: 16,
                color: Color(0xff212330),
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              "Create an account",
              style: GoogleFonts.ubuntu(
                fontSize: 16,
                color: Color(0xff212330),
              ),
            ),
          )
        ],
      ),
    );
  }
}
