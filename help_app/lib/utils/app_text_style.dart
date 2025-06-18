import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTextStyle {
  // Lato Font Styles with Google Fonts first, local fonts as fallback
  static TextStyle latoRegular({
    double size = 14.0,
    Color color = AppColors.black,
    FontWeight weight = FontWeight.normal,
  }) {
    return GoogleFonts.lato(
      fontSize: size,
      color: color,
      fontWeight: weight,
      // Fallback to local fonts if Google Fonts fail to load
      fontStyle: FontStyle.normal,
    ).copyWith(
      fontFamily: 'Lato', // Local fallback
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
      fontStyle: FontStyle.normal,
    ).copyWith(
      fontFamily: 'Lato', // Local fallback
    );
  }

  static TextStyle latoItalic({
    double size = 14.0,
    Color color = AppColors.black,
    FontWeight weight = FontWeight.normal,
  }) {
    return GoogleFonts.lato(
      fontSize: size,
      color: color,
      fontWeight: weight,
      fontStyle: FontStyle.italic,
    ).copyWith(
      fontFamily: 'Lato', // Local fallback
    );
  }

  static TextStyle latoBoldItalic({
    double size = 14.0,
    Color color = AppColors.black,
    FontWeight weight = FontWeight.bold,
  }) {
    return GoogleFonts.lato(
      fontSize: size,
      color: color,
      fontWeight: weight,
      fontStyle: FontStyle.italic,
    ).copyWith(
      fontFamily: 'Lato', // Local fallback
    );
  }

  // Lora Font Styles with Google Fonts first, system fonts as fallback
  // Since Lora local fonts had download issues, using system serif fallback
  static TextStyle loraRegular({
    double size = 14.0,
    Color color = AppColors.black,
    FontWeight weight = FontWeight.normal,
  }) {
    try {
      return GoogleFonts.lora(
        fontSize: size,
        color: color,
        fontWeight: weight,
        fontStyle: FontStyle.normal,
      );
    } catch (e) {
      // Fallback to system serif font if Google Fonts fail
      return TextStyle(
        fontFamily: 'serif',
        fontSize: size,
        color: color,
        fontWeight: weight,
        fontStyle: FontStyle.normal,
      );
    }
  }

  static TextStyle loraBold({
    double size = 14.0,
    Color color = AppColors.black,
    FontWeight weight = FontWeight.bold,
  }) {
    try {
      return GoogleFonts.lora(
        fontSize: size,
        color: color,
        fontWeight: weight,
        fontStyle: FontStyle.normal,
      );
    } catch (e) {
      return TextStyle(
        fontFamily: 'serif',
        fontSize: size,
        color: color,
        fontWeight: weight,
        fontStyle: FontStyle.normal,
      );
    }
  }

  static TextStyle loraItalic({
    double size = 14.0,
    Color color = AppColors.black,
    FontWeight weight = FontWeight.normal,
  }) {
    try {
      return GoogleFonts.lora(
        fontSize: size,
        color: color,
        fontWeight: weight,
        fontStyle: FontStyle.italic,
      );
    } catch (e) {
      return TextStyle(
        fontFamily: 'serif',
        fontSize: size,
        color: color,
        fontWeight: weight,
        fontStyle: FontStyle.italic,
      );
    }
  }

  static TextStyle loraBoldItalic({
    double size = 14.0,
    Color color = AppColors.black,
    FontWeight weight = FontWeight.bold,
  }) {
    try {
      return GoogleFonts.lora(
        fontSize: size,
        color: color,
        fontWeight: weight,
        fontStyle: FontStyle.italic,
      );
    } catch (e) {
      return TextStyle(
        fontFamily: 'serif',
        fontSize: size,
        color: color,
        fontWeight: weight,
        fontStyle: FontStyle.italic,
      );
    }
  }

  // Common text styles used throughout the app
  static TextStyle heading1 = loraBold(size: 24.0);
  static TextStyle heading2 = loraBold(size: 20.0);
  static TextStyle heading3 = loraBold(size: 18.0);
  static TextStyle bodyText = latoRegular(size: 16.0);
  static TextStyle smallText = latoRegular(size: 14.0);
  static TextStyle caption = latoRegular(size: 12.0);
  static TextStyle link =
      latoRegular(size: 14.0, color: AppColors.primaryColor);

  // Keep the old method names for backward compatibility
  static TextStyle lisuBosaRegular({
    double size = 14.0,
    Color color = AppColors.black,
    FontWeight weight = FontWeight.normal,
  }) {
    return loraRegular(size: size, color: color, weight: weight);
  }

  static TextStyle lisuBosaBold({
    double size = 14.0,
    Color color = AppColors.black,
    FontWeight weight = FontWeight.bold,
  }) {
    return loraBold(size: size, color: color, weight: weight);
  }
}
