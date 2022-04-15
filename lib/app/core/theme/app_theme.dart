import 'app_colors.dart';
import 'app_text_styles.dart';

class AppTheme {
  static final AppTheme _instance = AppTheme();

  final _colors = AppColors();
  static AppColors get colors => _instance._colors;

  final _textStyles = AppTextStyles();
  static AppTextStyles get textStyles => _instance._textStyles;
}
