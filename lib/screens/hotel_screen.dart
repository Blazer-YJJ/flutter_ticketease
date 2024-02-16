import 'package:flutter/material.dart';
import 'package:flutter_ticketease/utils/app_layout.dart';
import 'package:flutter_ticketease/utils/app_style.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      height: AppLayout.getHeight(context, 350),
      width: size.width * 0.6,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 20,
            spreadRadius: 5
          )
        ],
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(25)
      ),
      margin: EdgeInsets.only(
          left: AppLayout.getWidth(context, 15),
          top: AppLayout.getHeight(context, 5)
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        children: [
          Container(
            height: AppLayout.getHeight(context, 180),
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.white12,
                  blurRadius: 10,
                  spreadRadius: 5
                )
              ],
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(24),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/${hotel['image']}"
                )
              )
            ),
          ),
          Gap(AppLayout.getHeight(context, 15)),
          Text(
            "${hotel['place']}",
            style: Styles.headeLineStyle2.copyWith(color: Styles.kakiColor),
          ),
          Gap(AppLayout.getHeight(context, 5)),
          Text(
            "${hotel['destination']}",
            style: Styles.headeLineStyle3.copyWith(color: Colors.white),
          ),
          Gap(AppLayout.getHeight(context, 18)),
          Text(
            "\$ ${hotel['price']} / night",
            style: Styles.headeLineStyle2.copyWith(color: Styles.orangeColor),
          ),
        ],
      ),
    );
  }
}