import 'package:flutter/material.dart';
import 'package:task_and_finances/app/core/localization/app_translate.dart';
import 'package:task_and_finances/app/modules/auth/components/header_title_component.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HeaderTitleComponent(
                title: 'login.title'.tr(context),
                subtitle: 'login.subtitle'.tr(context),
              )
            ],
          ),
        ),
      ),
    );
  }
}
