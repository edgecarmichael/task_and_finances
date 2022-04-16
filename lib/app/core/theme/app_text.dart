import 'package:flutter/material.dart';

import 'app_theme.dart';

extension TextExt on Text {
  Text get label => Text(
        data!,
        style: AppTheme.textStyles.label,
      );
  Text get titleAuth => Text(
        data!,
        style: AppTheme.textStyles.titleAuth,
      );
  Text get subTitle => Text(
        data!,
        style: AppTheme.textStyles.subTitle,
      );
}
