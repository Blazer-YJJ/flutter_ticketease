import 'package:flutter/material.dart';
import 'package:flutter_ticketease/screens/ticket_view.dart';
import 'package:flutter_ticketease/utils/app_info_list.dart';
import 'package:flutter_ticketease/utils/app_layout.dart';
import 'package:flutter_ticketease/widgets/column_layout.dart';
import 'package:flutter_ticketease/widgets/layout_builder_widget.dart';
import 'package:flutter_ticketease/widgets/ticket_tabs.dart';
import 'package:barcode/barcode.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:gap/gap.dart';
import '../utils/app_style.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(context, 15),
              vertical: AppLayout.getWidth(context, 20)
            ),
            children: [
              Gap(AppLayout.getHeight(context, 40)),
              Text('Tickets', style: Styles.headeLineStyle.copyWith(fontSize: 35)),
              Gap(AppLayout.getHeight(context, 40)),
              const AppTicketTabs(firstTab: 'Upcoming', secondTab: 'Previous'),
              Gap(AppLayout.getHeight(context, 20)),
              Container(
                padding: EdgeInsets.only(right: AppLayout.getHeight(context, 15)),
                child: TicketView(ticketing: ticketList[0], isColor: true),
              ),
              const SizedBox(height: 1),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(AppLayout.getHeight(context, 20)),
                    bottomLeft: Radius.circular(AppLayout.getHeight(context, 20))
                  )
                ),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: 'Flutter DB',
                          secondText: 'Passenger',
                          alignment: CrossAxisAlignment.start
                        ),
                        AppColumnLayout(
                          firstText: '545-2024-78',
                          secondText: 'passport',
                          alignment: CrossAxisAlignment.end
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(context, 20)),
                    const AppLayoutBuilderWidget(isColor: true, section: 8, width: 2),
                    Gap(AppLayout.getHeight(context, 20)),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                            firstText: '05422G1A44',
                            secondText: 'Number of E-ticket',
                            alignment: CrossAxisAlignment.start
                        ),
                        AppColumnLayout(
                            firstText: '100052',
                            secondText: 'Booking code',
                            alignment: CrossAxisAlignment.end
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(context, 20)),
                    const AppLayoutBuilderWidget(isColor: true, section: 8, width: 2),
                    Gap(AppLayout.getHeight(context, 20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/images/Visamini.png', scale: 7),
                                Text(' *** 3443', style: Styles.headeLineStyle3.copyWith(color: Colors.black))
                              ],
                            ),
                            Gap(AppLayout.getHeight(context, 5)),
                            Text('Payment method', style: Styles.headeLineStyle4.copyWith(color: Colors.black54))
                          ],
                        ),
                        const AppColumnLayout(
                            firstText: '\$549.99',
                            secondText: 'Price',
                            alignment: CrossAxisAlignment.end
                        ),
                      ],
                    ),
                    const SizedBox(height: 1),
                    Gap(AppLayout.getHeight(context, 20)),
                    /*
                    * 条形码
                    * */
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(context, 20)),
                        child: BarcodeWidget(
                          data: 'https://github.com/Blazer-YJJ/flutter_ticketease',
                          barcode: Barcode.code128(),
                          drawText: false,
                          color: Styles.textColor,
                          width: double.infinity,
                          height: AppLayout.getHeight(context, 90),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Gap(AppLayout.getHeight(context, 20)),
              Container(
                padding: EdgeInsets.only(right: AppLayout.getHeight(context, 15)),
                child: TicketView(ticketing: ticketList[1]),
              )
            ],
          ),
          /*
          * 小圆 左右
          * */
          Positioned(
            left: AppLayout.getHeight(context, 19),
            top: AppLayout.getHeight(context, 295),
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.deepOrange, width: 2)
              ),
              child: const CircleAvatar(
                maxRadius: 4,
                backgroundColor: Colors.deepOrange,
              ),
            )
          ),
          Positioned(
              right: AppLayout.getHeight(context, 19),
              top: AppLayout.getHeight(context, 295),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.deepOrange, width: 2)
                ),
                child: const CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Colors.deepOrange,
                ),
              )
          )
        ],
      ),
    );
  }
}
