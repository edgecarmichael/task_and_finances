import 'package:flutter/material.dart';
import 'package:provider/single_child_widget.dart';
import 'package:task_and_finances/app/core/config_modules/app_config_widget.dart';

abstract class AppModuleConfig {
  final Map<String, WidgetBuilder> _routers;
  final List<SingleChildWidget>? _bindings;

  AppModuleConfig({
    required Map<String, WidgetBuilder> routers,
    List<SingleChildWidget>? bindings,
  })  : _bindings = bindings,
        _routers = routers;

  Map<String, WidgetBuilder> get routers {
    return _routers.map(
      (key, pageBuilder) => MapEntry(
        key,
        (_) => AppConfigWidget(bindings: _bindings, page: pageBuilder),
      ),
    );
  }
}
