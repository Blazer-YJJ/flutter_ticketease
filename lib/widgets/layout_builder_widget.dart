import 'package:flutter/material.dart';
import '../utils/app_layout.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final int section;
  final double width;
  const AppLayoutBuilderWidget({
    super.key,
    this.isColor,
    required this.width,
    required this.section,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
            direction: Axis.horizontal, // 设置水平方向
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // 两端对齐
            children: List.generate(
                (constraints.maxWidth / section).floor(), // 根据约束宽度除以6的结果向下取整来生成一系列的点
                  (index) => SizedBox(
                    width: AppLayout.getWidth(context, width),
                    height: AppLayout.getHeight(context, 1),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor == null ? Colors.black54 : Colors.black12
                      )
                  ),
                )
            )
        );
      },
    );
  }
}
