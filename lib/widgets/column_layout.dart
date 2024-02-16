import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_style.dart';
class AppColumnLayout extends StatelessWidget {
  final String firstText;
  final String secondText;
  final CrossAxisAlignment alignment;
const AppColumnLayout({
    super.key,
    required this.firstText,
    required this.secondText,
    required this.alignment
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firstText,
          style: Styles.headeLineStyle3.copyWith(color: Colors.black)
        ),
        Gap(AppLayout.getHeight(context, 5)),
        Text(
          secondText,
          style: Styles.headeLineStyle4.copyWith(color: Colors.black54)
        ),
      ],
    );
  }
}
