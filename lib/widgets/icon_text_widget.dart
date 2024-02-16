import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(context, 12),
          vertical: AppLayout.getWidth(context, 12)
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppLayout.getWidth(context, 50))
      ),
      child: Row(
        children: [
          Icon(icon, color: Styles.orangeColor),
          Gap(AppLayout.getWidth(context, 15)),
          Text(text, style: Styles.textStyle)
        ],
      ),
    );
  }
}
