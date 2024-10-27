// Internee.pk APP Colors//

import 'package:flutter/material.dart';

class AppColors {
  // APP THEME COLOR//
  static const primaryColor = Color(0Xff3dd442);
  static const secondaryColor = Color(0Xff8c52fe);

  // APP Background COLOR//
  static const backgroundColor = Color(0XffF7F7F7);

  // SECTION Background COLOR//
  static const sectionCard = Colors.white;

  // Text Colors//
  static const primaryText = Color(0xff21282e);
  static const secondaryText = Color(0xff717275);
  static const sectionHeading = Color(0xff21282e);

  // Button Colors//
  static const primaryButton = Color(0xff43a724);
  static const secondaryButton = Color(0xff43a728);

// Neutral Shades//
  static const yellow = Color(0xffffcf2f);
  static const green = Color(0xff6fe08d);
  static const blue = Color(0xff61bdfd);
  static const red = Color(0xfffc7f7f);
  static const purple = Color(0xffcb84fb);
  static const pink = Color(0xfff5bde8);
}

class AppText {
  static const Heading = TextStyle(
    fontFamily: "Heading",
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryText,
  );

  static const CardHeading = TextStyle(
    fontFamily: "SubHeading",
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryText,
  );
  static const TextButton = TextStyle(
    fontFamily: "SubHeading",
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.secondaryColor,
  );
  static const SectionHeading = TextStyle(
    fontFamily: "Heading",
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: AppColors.sectionHeading,
  );
}
