import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

String translate(BuildContext context, String key,
    {Map<String, String>? params}) {
  return FlutterI18n.translate(context, key, translationParams: params);
}

extension TranslateBuildContext on BuildContext {
  String trEx(String key, {Map<String, String>? params}) {
    return translate(this, key, params: params);
  }
}

extension TranslateString on String {
  String tr(BuildContext context, String key, {Map<String, String>? params}) {
    return translate(context, this, params: params);
  }
}
