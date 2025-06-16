import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTextStyle {
  // Lato Font Styles
  static TextStyle latoRegular({
    double size = 14.0,
    Color color = AppColors.black,
    FontWeight weight = FontWeight.normal,
  }) {
    return GoogleFonts.lato(
      fontSize: size,
      color: color,
      fontWeight: weight,
    );
  }

  static TextStyle latoBold({
    double size = 14.0,
    Color color = AppColors.black,
    FontWeight weight = FontWeight.bold,
  }) {
    return GoogleFonts.lato(
      fontSize: size,
      color: color,
      fontWeight: weight,
    );
  }

  static TextStyle latoItalic({
    double size = 14.0,
    Color color = AppColors.black,
  }) {
    return GoogleFonts.lato(
      fontSize: size,
      color: color,
      fontStyle: FontStyle.italic,
    );
  }

  // Since Lisu Bosa might not be available in Google Fonts, we'll use Lora as a substitute
  // or another serif font that looks similar
  static TextStyle lisuBosaRegular({
    double size = 14.0,
    Color color = AppColors.black,
    FontWeight weight = FontWeight.normal,
  }) {
    return GoogleFonts.lora(
      fontSize: size,
      color: color,
      fontWeight: weight,
    );
  }

  static TextStyle lisuBosaBold({
    double size = 14.0,
    Color color = AppColors.black,
    FontWeight weight = FontWeight.bold,
  }) {
    return GoogleFonts.lora(
      fontSize: size,
      color: color,
      fontWeight: weight,
    );
  }

  // Common text styles used throughout the app
  static TextStyle heading1 = lisuBosaBold(size: 24.0);
  static TextStyle heading2 = lisuBosaBold(size: 20.0);
  static TextStyle heading3 = lisuBosaBold(size: 18.0);
  static TextStyle bodyText = latoRegular(size: 16.0);
  static TextStyle smallText = latoRegular(size: 14.0);
  static TextStyle caption = latoRegular(size: 12.0);
  static TextStyle link =
      latoRegular(size: 14.0, color: AppColors.primaryColor);
}
