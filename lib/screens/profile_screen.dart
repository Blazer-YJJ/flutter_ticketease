import 'package:flutter/material.dart';
import 'package:flutter_ticketease/widgets/column_layout.dart';
import 'package:flutter_ticketease/widgets/layout_builder_widget.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(context, 20),
          vertical: AppLayout.getWidth(context, 20)
        ),
        children: [
          Gap(AppLayout.getHeight(context, 40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(context, 100),
                width: AppLayout.getWidth(context, 100),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/long.png')
                  )
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Book Tickets', style: Styles.headeLineStyle),
                  Gap(AppLayout.getHeight(context, 0)),
                  const Text(
                    'New-York',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black45
                    )
                  ),
                  Gap(AppLayout.getHeight(context, 8)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(context, 100)),
                      color: const Color(0xfffef4f3)
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(context, 3),
                      horizontal: AppLayout.getHeight(context, 3)
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff526799)
                          ),
                          child: const Icon(
                            Icons.account_tree_outlined,
                            color: Colors.white,
                            size: 15
                          ),
                        ),
                        Gap(AppLayout.getHeight(context, 5)),
                        const Text(
                          'Premium Status',
                          style: TextStyle(
                            color: Color(0xff526799),
                            fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      print('click the Edit');
                    },
                    child: Text(
                      'Edit',
                      style: Styles.textStyle.copyWith(
                        color: Styles.primaryColor,
                        fontWeight: FontWeight.w300
                      ),
                    ),
                  )
                ],
              )

            ],
          ),
          Gap(AppLayout.getHeight(context, 8)),
          Divider(color: Colors.grey.shade300),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height:  AppLayout.getHeight(context, 100),
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(context, 20))
                ),
              ),
              Positioned(
                right: -25,
                top: -30,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(context, 30)),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 18, color: Colors.deepOrangeAccent)
                  ),
                )
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(context, 25),
                  vertical: AppLayout.getHeight(context, 20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.camera_outlined,
                        color: Colors.deepOrangeAccent,
                        size: 35,
                      ),
                    ),
                    Gap(AppLayout.getHeight(context, 12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your\`v got a new award',
                          style: Styles.headeLineStyle2.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          'You have 95 flights in a year',
                          style: Styles.headeLineStyle3.copyWith(
                            color: Colors.white.withOpacity(0.8),
                            fontWeight: FontWeight.w500
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(context, 25)),
          Text('Accumulated miles', style: Styles.headeLineStyle2),
          Gap(AppLayout.getHeight(context, 20)),
          Container(
            decoration: BoxDecoration(
              color: Styles.bgColor,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  spreadRadius: 10
                )
              ],
              borderRadius: BorderRadius.circular(AppLayout.getHeight(context, 18)),
            ),
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(context, 20)),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(context, 15)),
                Text(
                  '256602',
                  style: TextStyle(
                    fontSize: 45,
                    color: Styles.textColor,
                    fontWeight: FontWeight.w600
                  ),
                ),
                Gap(AppLayout.getHeight(context, 20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Miles accrued',
                      style: Styles.headeLineStyle4.copyWith(
                        fontSize: 16,
                        color: Colors.black54,
                        fontWeight: FontWeight.w600
                      )
                    ),
                    Text(
                      '22 May 2023',
                      style: Styles.headeLineStyle4.copyWith(
                        fontSize: 16,
                        color: Colors.black54,
                        fontWeight: FontWeight.w600
                      )
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(context, 10)),
                const AppLayoutBuilderWidget(width: 4, section: 12, isColor: true),
                Gap(AppLayout.getHeight(context, 10)),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      firstText: '65458',
                      secondText: 'Miles',
                      alignment: CrossAxisAlignment.start
                    ),
                    AppColumnLayout(
                        firstText: 'Airline CO',
                        secondText: 'Received from',
                        alignment: CrossAxisAlignment.end
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(context, 10)),
                const AppLayoutBuilderWidget(width: 2, section: 12, isColor: true),
                Gap(AppLayout.getHeight(context, 10)),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                        firstText: '24',
                        secondText: 'Miles',
                        alignment: CrossAxisAlignment.start
                    ),
                    AppColumnLayout(
                        firstText: 'McDonal`s',
                        secondText: 'Received from',
                        alignment: CrossAxisAlignment.end
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(context, 10)),
                const AppLayoutBuilderWidget(width: 2, section: 12, isColor: true),
                Gap(AppLayout.getHeight(context, 10)),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                        firstText: '52 650',
                        secondText: 'Miles',
                        alignment: CrossAxisAlignment.start
                    ),
                    AppColumnLayout(
                        firstText: 'Exuma',
                        secondText: 'Received from',
                        alignment: CrossAxisAlignment.end
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(context, 20)),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(context, 20)),
          InkWell(
            onTap: () {
              print('click the link');
            },
            child: Center(
              child: Text(
                'How to get more miles',
                style: TextStyle(
                  fontSize: 14,
                  color: Styles.primaryColor,
                  fontWeight: FontWeight.w600
                ),
              ),
            )
          )
        ]
      ),
    );
  }
}
