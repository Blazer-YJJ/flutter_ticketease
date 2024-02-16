import 'package:flutter/material.dart';
import 'package:flutter_ticketease/screens/hotel_screen.dart';
import 'package:flutter_ticketease/screens/ticket_view.dart';
import 'package:flutter_ticketease/utils/app_layout.dart';
import 'package:flutter_ticketease/utils/app_info_list.dart';
import 'package:flutter_ticketease/utils/app_style.dart';
import 'package:flutter_ticketease/widgets/double_text_widget.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: AppLayout.getWidth(context, 20),
              right: AppLayout.getHeight(context, 20)
            ),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(context, 40)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi! Welcome here!", 
                          style: Styles.headeLineStyle3
                        ),
                        Text(
                          "TicketEase", 
                          style: Styles.headeLineStyle
                        ),
                      ],
                    ),
                    Container(
                      height: AppLayout.getHeight(context, 80),
                      width: AppLayout.getWidth(context, 80),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/long.png')
                        )
                      ),
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(context, 35)),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD)
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20, 
                    vertical: 20
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search, 
                        color: Colors.orange
                      ),
                      Text(
                        "Search", 
                        style: Styles.headeLineStyle4
                      )
                    ],
                  ),
                ),
                Gap(AppLayout.getHeight(context, 40)),
                const AppDoubleTextWidget(bigText: 'Upcoming Flights', smallText: 'View all'),
              ]
            ),
          ),
          Gap(AppLayout.getWidth(context, 15)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: ticketList.map((singTicket) => TicketView(ticketing: singTicket)).toList()
            ),
          ),
          Gap(AppLayout.getWidth(context, 15)),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const AppDoubleTextWidget(bigText: 'Hotels', smallText: 'View all'),
          ),
          Gap(AppLayout.getWidth(context, 15)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: hottelList.map((hotel) => HotelScreen(hotel: hotel)).toList()
            ),
          )
        ]
      )
    );
  }
}