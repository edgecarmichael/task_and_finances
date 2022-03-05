import 'package:flutter/material.dart';
import 'package:task_and_finances/app/core/flavors/flavors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: FlavorExt.title,
    );
  }
}
