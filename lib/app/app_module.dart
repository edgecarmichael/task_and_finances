import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_and_finances/app/app_widget.dart';
import 'package:task_and_finances/app/core/database/sqlite_connections_factory.dart';

class AppModule extends StatelessWidget {
  const AppModule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) => SqliteConnectionsFactory(),
          lazy: false,
        ),
      ],
      child: const AppWidget(),
    );
  }
}
