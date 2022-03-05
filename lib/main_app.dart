import 'package:flutter/cupertino.dart';

import 'app.dart';
import 'app/core/flavors/flavors.dart';

Future<void> mainApp(Flavor flavor) async {
  appFlavor = flavor;

  runApp(
    const App(),
  );
}
