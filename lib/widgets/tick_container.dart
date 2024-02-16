import 'package:flutter/material.dart';
import 'package:flutter_ticketease/utils/app_style.dart';

// 封装圆点
class TickContainer extends StatelessWidget {
  final bool? isColor;
  const TickContainer({super.key, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), // 设置边框的圆角半径
        border: Border.all(width: 2.5, color: isColor == null ? Colors.white : Styles.orangeColor)
      ),
    );
  }
}