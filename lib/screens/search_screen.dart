import 'package:flutter/material.dart';
import 'package:flutter_ticketease/utils/app_layout.dart';
import 'package:flutter_ticketease/utils/app_style.dart';
import 'package:flutter_ticketease/widgets/double_text_widget.dart';
import 'package:flutter_ticketease/widgets/icon_text_widget.dart';
import 'package:flutter_ticketease/widgets/ticket_tabs.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(context, 15),
          vertical: AppLayout.getWidth(context, 20)
        ),
        children: [
          Gap(AppLayout.getHeight(context, 40)),
          Text(
            'What are \nyou looking for?',
            style: Styles.headeLineStyle.copyWith(
                fontSize: AppLayout.getWidth(context, 35)
            )
          ),
          Gap(AppLayout.getHeight(context, 20)),
          const AppTicketTabs(firstTab: 'Airline tickets', secondTab: 'Hotels'),
          Gap(AppLayout.getHeight(context, 25)),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          Gap(AppLayout.getHeight(context, 10)),
          const AppIconText(icon: Icons.dashboard_outlined, text: 'Arrival'),
          Gap(AppLayout.getHeight(context, 15)),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(context, 20),
              vertical: AppLayout.getWidth(context, 20)
            ),
            decoration: BoxDecoration(
              color: Styles.orangeColor,
              borderRadius: BorderRadius.circular(AppLayout.getWidth(context, 20))
            ),
            child: Center(
              child: Text(
                'Find tickets',
                style: Styles.headeLineStyle2.copyWith(color: Colors.white)
              )
            ),
          ),
          Gap(AppLayout.getHeight(context, 40)),
          const AppDoubleTextWidget(bigText: 'Upcoming Flights', smallText: 'View all'),
          Gap(AppLayout.getHeight(context, 15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width * .42,
                height: AppLayout.getHeight(context, 400),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                    boxShadow: const[
                      BoxShadow(
                        color: Colors.white70,
                        blurRadius: 1,
                        spreadRadius: 5
                      )
                    ],
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(context, 180),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/anmol-seth-hDbCjHNdF48-unsplash.jpg')
                        )
                      ),
                    ),
                    Gap(AppLayout.getHeight(context, 15)),
                    Text(
                      'This flight is 25% off, a rare opportunity. Both business class and first class passengers receive free gifts.',
                      style: Styles.headeLineStyle3.copyWith(color: Colors.black54),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * .44,
                        height: AppLayout.getHeight(context, 200),
                        decoration: BoxDecoration(
                          color: Styles.primaryColor,
                          borderRadius: BorderRadius.circular(AppLayout.getHeight(context, 18))
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(context, 12),
                          horizontal: AppLayout.getHeight(context, 12)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount\nfor survey',
                              style: Styles.headeLineStyle2.copyWith(color: Colors.white),
                            ),
                            Gap(AppLayout.getHeight(context, 15)),
                            Text(
                              'About how to get air ticket discounts and our services',
                              style: Styles.textStyle.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          ],
                        ),
                      ),
                      // 右上角圆圈图形
                      Positioned(
                        right: -30,
                        top: -30,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(context, 33)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 20, color: Styles.orangeColor),
                            color: Colors.transparent
                          ),
                        )
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(context, 15)),
                  Container(
                    width: size.width * .44,
                    height: AppLayout.getHeight(context, 185),
                    padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(context, 15),
                      horizontal: AppLayout.getWidth(context, 15),
                    ),
                    decoration: BoxDecoration(
                      color: Styles.orangeColor,
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(context, 18)),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Tack love",
                          textAlign: TextAlign.center,
                          style: Styles.headeLineStyle2.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )
                        ),
                        Gap(AppLayout.getHeight(context, 5)),
                        // emoji
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '😊',
                                style: TextStyle(fontSize: 35)
                              ),
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 50)
                              ),
                              TextSpan(
                                text: '😄',
                                style: TextStyle(fontSize: 35)
                              )
                            ]
                          )
                        )
                      ],
                    )
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
