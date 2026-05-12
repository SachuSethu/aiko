import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  /// PRIMARY
  static const Color primary = Color(0xFF3F51B5);

  /// SECONDARY
  static const Color secondary = Color(0xFF9575CD);

  /// TERTIARY
  static const Color tertiary = Color(0xFF81C784);

  /// NEUTRAL
  static const Color background = Color(0xFFF8F9FA);
  static const Color surface = Colors.white;

  /// TEXT
  static const Color titleText = Color.fromARGB(255, 36, 56, 156);
  static const Color bodyText = Color(0xFF5F6368);

  /// STATUS
  static const Color success = Color(0xFF2E7D32);
  static const Color error = Color(0xFFD32F2F);
  static const Color warning = Color(0xFFF9A825);

  /// BORDER
  static const Color border = Color(0xFFE0E0E0);
}

class AppTextStyles {
  /// TITLES -> LEXEND
  static TextStyle heading1 = GoogleFonts.lexend(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: AppColors.titleText,
  );
 static TextStyle heading0 = GoogleFonts.lexend(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: const Color.fromARGB(255, 0, 0, 0),
  );
  static TextStyle heading01 = GoogleFonts.lexend(
    fontSize: 27,
    fontWeight: FontWeight.bold,
    color: const Color.fromARGB(255, 0, 0, 0),
  );
  static TextStyle heading02 = GoogleFonts.lexend(
    fontSize: 27,
    fontWeight: FontWeight.bold,
    color: const Color.fromARGB(255, 12, 86, 234),
  );
  static TextStyle heading2 = GoogleFonts.lexend(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.titleText,
  );

  static TextStyle heading3 = GoogleFonts.lexend(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.titleText,
  );

  /// BODY -> INTER
  static TextStyle bodyLarge = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.bodyText,
  );

  static TextStyle bodyMedium = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.bodyText,
  );

  static TextStyle bodySmall = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.bodyText,
  );

  /// BUTTON
  static TextStyle buttonText = GoogleFonts.lexend(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.background,

    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      surface: AppColors.surface,
    ),

    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.surface,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: AppTextStyles.heading3,
      iconTheme: const IconThemeData(
        color: AppColors.titleText,
      ),
    ),

    textTheme: TextTheme(
      headlineLarge: AppTextStyles.heading1,
      headlineMedium: AppTextStyles.heading2,
      headlineSmall: AppTextStyles.heading3,

      bodyLarge: AppTextStyles.bodyLarge,
      bodyMedium: AppTextStyles.bodyMedium,
      bodySmall: AppTextStyles.bodySmall,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        textStyle: AppTextStyles.buttonText,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),

        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 14,
        ),
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,

      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 14,
      ),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: AppColors.border,
        ),
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: AppColors.border,
        ),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: AppColors.primary,
          width: 2,
        ),
      ),

      hintStyle: AppTextStyles.bodyMedium,
      labelStyle: AppTextStyles.bodyMedium,
    ),

   
  );
}