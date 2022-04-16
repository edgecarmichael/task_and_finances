import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';

abstract class IAppTextStyles {
  TextStyle get label;
}

class AppTextStyles implements IAppTextStyles {
  @override
  TextStyle get label => GoogleFonts.getFont(
        'Urbanist',
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.label,
        fontSize: 18,
      );

  TextStyle get titleAuth => GoogleFonts.getFont(
        'Urbanist',
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.primary,
        fontSize: 24,
      );

  TextStyle get subTitle => GoogleFonts.getFont(
        'Urbanist',
        fontWeight: FontWeight.w500,
        color: AppTheme.colors.label,
        fontSize: 14,
      );
}
