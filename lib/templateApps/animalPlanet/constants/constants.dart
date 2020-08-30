import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constants {
  Constants._();

  static const String APP_NAME = "aplanet";
  static const String TAG_LINE = "We love the planet";
  static const String READY_TO_WATCH = "Ready to watch?";
  static const String READY_TO_WATCH_DESC =
      "Aplanet is a global leader in real life entertainment, serving a passionate audience of superfans around the world with content that inspires, informs and entertains.";
  static const String START_ENJOYING = "Start Enjoying";
  static const String LAST_STEP_TO_ENJOY = "Last step to enjoy";
  static const String chooseAPlan = "Choose a plan";
  static const String weekSubscription = "Week subscription";
  static const String oneMonthSubscription = "1 Month subscription";
  static const String threeMonthSubscription = "3 Month subscription";
  static const String sixMonthSubscription = "6 Month subscription";
  static const String welcomeToAPlanet = "Welcome to New Aplanet";
  static const String relatedToYou = "Related to you";
  static const String lifeWithATiger = "Life with a Tiger";
  static const String wildAnimals = "Wild animals";
  static const String quickCategories = "Quick categories";
  static const String bear = "BEAR";
  static const String lion = "LION";
  static const String reptiles = "REPTILES";
  static const String pets = "PETS";
  static const String loremIpsum =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam tempor erat in arcu finibus vulputate.";

  static final TextStyle appNameTextStyle = GoogleFonts.ubuntu(
    fontSize: 32,
    fontWeight: FontWeight.w800,
    color: Colors.white.withOpacity(0.7),
  );

  static final TextStyle tagLineTextStyle = GoogleFonts.ubuntu(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );

  static final TextStyle bigHeadingTextStyle = GoogleFonts.ubuntu(
    fontSize: 60,
    fontWeight: FontWeight.w900,
    color: Colors.white,
  );

  static final TextStyle bodyTextStyle = GoogleFonts.ubuntu(
    fontSize: 21,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );

  static final TextStyle buttonTextStyle = GoogleFonts.ubuntu(
    fontSize: 25,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static final TextStyle headingTextStyle = GoogleFonts.ubuntu(
    fontSize: 32,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static final TextStyle subTextTextStyle = GoogleFonts.ubuntu(
    fontSize: 25,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static final TextStyle subAmountTextStyle = GoogleFonts.ubuntu(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static final TextStyle titleTextStyle = GoogleFonts.ubuntu(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );
  static final TextStyle body2TextStyle = GoogleFonts.ubuntu(
    fontSize: 16,
    letterSpacing: 1.4,
    fontWeight: FontWeight.w700,
    color: Colors.white.withOpacity(0.5),
  );
  static final TextStyle body3TextStyle = GoogleFonts.ubuntu(
    fontSize: 12,
    fontWeight: FontWeight.w300,
    color: Colors.white.withOpacity(0.8),
    height: 1.2,
  );
}
