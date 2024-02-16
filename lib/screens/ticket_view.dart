import 'package:flutter/material.dart';
import 'package:flutter_ticketease/utils/app_layout.dart';
import 'package:flutter_ticketease/utils/app_style.dart';
import 'package:flutter_ticketease/widgets/layout_builder_widget.dart';
import 'package:flutter_ticketease/widgets/tick_container.dart';
import 'package:gap/gap.dart';
import 'package:get/get_utils/src/platform/platform.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticketing;
  final bool? isColor;
  const TicketView({super.key, required this.ticketing, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(context, GetPlatform.isAndroid == true ? 171 : 173),
      // height: 200,
      child: Container(
        margin: EdgeInsets.only(left: AppLayout.getHeight(context, 16)),
        child: Column(
          children: [
            // 轮播-蓝色卡片
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isColor == null ? const Color(0xff526799) : Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)
                )
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "${ticketing['from']['code']}",
                        style: isColor == null
                            ? Styles.headeLineStyle3.copyWith(color: Colors.white)
                            : Styles.headeLineStyle3.copyWith(color: Colors.black)
                      ),
                      // const Spacer(),
                      Expanded(child: Container()),
                      const TickContainer(isColor: true,),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                            height: AppLayout.getHeight(context, 24),
                            child: const AppLayoutBuilderWidget(section: 12, width: 5,)
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: const Icon(
                                Icons.local_airport_rounded,
                                color: Colors.orangeAccent
                              )
                            ),
                          )
                        ],
                      )),
                      const TickContainer(isColor: true),
                      Expanded(child: Container()),
                      Text(
                        "${ticketing['to']['code']}",
                        style: isColor == null
                            ? Styles.headeLineStyle3.copyWith(color: Colors.white)
                            : Styles.headeLineStyle3.copyWith(color: Colors.black)
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(context, 5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(context, 100),
                        child: Text(
                          "${ticketing['from']['name']}",
                          style: isColor == null
                              ? Styles.headeLineStyle4.copyWith(color: Colors.white)
                              : Styles.headeLineStyle4.copyWith(color: Colors.black54)
                        ),
                      ),
                      Text(
                        "${ticketing['flying_time']}",
                        style: isColor == null
                            ? Styles.headeLineStyle4.copyWith(color: Colors.white)
                            : Styles.headeLineStyle4.copyWith(color: Colors.black54)
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(context, 100),
                        child: Text(
                          "${ticketing['to']['name']}",
                          textAlign: TextAlign.end,
                          style: isColor == null
                              ? Styles.headeLineStyle4.copyWith(color: Colors.white)
                              : Styles.headeLineStyle4.copyWith(color: Colors.black54)
                        ),
                      ),
                    ],
                  )
                ],
              )
            ),
            // 轮播-橙色卡片-撕扯线
            Container(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(context, 20),
                    width: AppLayout.getWidth(context, 10),
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)
                        )
                      )
                    ),
                  ),
                  Expanded(
                    child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                            (constraints.constrainWidth() / 12).floor(),
                              (index) => SizedBox(
                              width: AppLayout.getWidth(context, 5),
                              height: AppLayout.getHeight(context, 5),
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: isColor == null ? Colors.white : Colors.black54
                                )
                              ),
                            )
                          )
                        );
                      },
                    )
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(context, 20),
                    width: AppLayout.getHeight(context, 10),
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)
                        )
                      )
                    ),
                  )
                ],
              )
            ),
            // 轮播-橙色卡片-底部
            Container(
              padding: EdgeInsets.only(
                  left: AppLayout.getWidth(context, 16),
                  right: AppLayout.getWidth(context, 16),
                  top: AppLayout.getHeight(context, 10),
                  bottom: AppLayout.getHeight(context, 16)
              ),
              decoration: BoxDecoration(
                color: isColor == null ? Styles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor == null ? 20 : 0),
                  bottomRight: Radius.circular(isColor == null ? 20 : 0)
                )
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${ticketing['date']}",
                            style: isColor == null
                                ? Styles.headeLineStyle3.copyWith(color: Colors.white)
                                : Styles.headeLineStyle3.copyWith(color: Colors.black)
                          ),
                          Text(
                            "DATE",
                            style: isColor == null
                                ? Styles.headeLineStyle4.copyWith(color: Colors.white)
                                : Styles.headeLineStyle4.copyWith(color: Colors.black54)
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "${ticketing['departure']}",
                            style: isColor == null
                                ? Styles.headeLineStyle3.copyWith(color: Colors.white)
                                : Styles.headeLineStyle3.copyWith(color: Colors.black)
                          ),
                          Text(
                            "Departure time",
                            style: isColor == null
                                ? Styles.headeLineStyle4.copyWith(color: Colors.white)
                                : Styles.headeLineStyle4.copyWith(color: Colors.black54)
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "${ticketing['number']}",
                            style: isColor == null
                                ? Styles.headeLineStyle3.copyWith(color: Colors.white)
                                : Styles.headeLineStyle3.copyWith(color: Colors.black)
                          ),
                          Text(
                            "NUMBER",
                            style: isColor == null
                                ? Styles.headeLineStyle4.copyWith(color: Colors.white)
                                : Styles.headeLineStyle4.copyWith(color: Colors.black54)
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ) 
    );
  }
}