import 'package:flutter/material.dart';
import 'package:task_and_finances/app/core/theme/app_text.dart';

class HeaderTitleComponent extends StatelessWidget {
  final String title;
  final String subtitle;

  const HeaderTitleComponent(
      {Key? key, required this.title, required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 60,
        ),
        Text(title).titleAuth,
        Text(subtitle).subTitle,
      ],
    );
  }
}
