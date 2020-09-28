import 'package:flutter/material.dart';

class ProfileSec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Today.",
          style: TextStyle(
            color: Colors.white,
            fontSize: 38,
            fontWeight: FontWeight.w500,
          ),
        ),
        Material(
          elevation: 4,
          borderRadius: BorderRadius.circular(50),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(
              Icons.face,
              size: 32,
            ),
          ),
        )
      ],
    );
  }
}
