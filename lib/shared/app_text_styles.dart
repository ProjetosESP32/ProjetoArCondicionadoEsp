import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class TextStyles {
  static final titleHome = GoogleFonts.montserrat(
    fontSize: 32,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
  );
  static final titleRegular = GoogleFonts.montserrat(
    fontSize: 26,
    fontWeight: FontWeight.w400,
    color: AppColors.primary,
  );
  static final regular = GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.primary,
  );
  static final button = GoogleFonts.montserrat(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColors.background,
  );
}
