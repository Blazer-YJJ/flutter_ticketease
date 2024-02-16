import 'package:flutter/material.dart';
import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({
    super.key,
    required this.firstTab,
    required this.secondTab,
  });

  @override
  Widget build(BuildContext context) {
   final size = AppLayout.getSize(context);
    return FittedBox(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(AppLayout.getHeight(context, 50))
          ),
          padding: const EdgeInsets.all(3.5),
          child: Row(
            children: [
              Container(
                  width: size.width * .44,
                  padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(context, 7)
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(AppLayout.getHeight(context, 50))
                    ),
                  ),
                  child: Center(child: Text(
                      firstTab,
                      style: Styles.headeLineStyle3.copyWith(color: Colors.black54)
                  ))
              ),

              Container(
                  width: size.width * .44,
                  padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(context, 7)
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(AppLayout.getHeight(context, 50))
                    ),
                  ),
                  child: Center(child: Text(
                      secondTab,
                      style: Styles.headeLineStyle3.copyWith(color: Colors.white)
                  ))
              ),
            ],
          ),
        )
    );
  }
}
