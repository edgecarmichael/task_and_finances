import 'package:flutter/material.dart';
import 'package:task_and_finances/app/core/database/sqlite_adm_connection.dart';
import 'package:task_and_finances/app/core/flavors/flavors.dart';
import 'package:task_and_finances/app/modules/auth/auth_module.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final sqliteAdminConnection = SqliteAdmConnection();

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(sqliteAdminConnection);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(sqliteAdminConnection);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: FlavorExt.title,
      initialRoute: '/login',
      routes: {
        ...AuthModule().routers,
      },
    );
  }
}
