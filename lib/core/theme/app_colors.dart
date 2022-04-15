import 'package:flutter/material.dart';

abstract class IAppColors {
  Color get primary;
  Color get secondary;
  Color get textColor;
  Color get accentColor;
  Color get label;
}

class AppColors implements IAppColors {
  @override
  Color get primary => const Color(0xFF23CBD8);
  @override
  Color get secondary => const Color(0xFFF0F5FA);
  @override
  Color get accentColor => const Color(0xFFF15902);
  @override
  Color get textColor => const Color(0xFFA9A9BA);
  @override
  Color get label => const Color(0xFFA9A9BA);
}
