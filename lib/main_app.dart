import 'package:flutter/cupertino.dart';
import 'package:task_and_finances/app/app_module.dart';

import 'app/core/flavors/flavors.dart';

Future<void> mainApp(Flavor flavor) async {
  appFlavor = flavor;

  runApp(
    const AppModule(),
  );
}
