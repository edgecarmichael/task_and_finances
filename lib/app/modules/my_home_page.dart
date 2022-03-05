import 'package:flutter/material.dart';
import '../core/flavors/flavors.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(FlavorExt.title),
      ),
      body: Center(
        child: Text(
          'Hello ${FlavorExt.title}',
        ),
      ),
    );
  }
}
