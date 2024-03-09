import 'package:airport_page/utils/colors.dart';
import 'package:airport_page/utils/styles.dart';
import 'package:airport_page/widgets/pt_row_element.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PublicTransport extends StatelessWidget {
  const PublicTransport({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: AppStyles.boxDecoration,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Public Transport',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10),
            const PTRowElement(
              iconPath: 'assets/icons/metro.svg',
              travelMode: 'Metro',
              time: '6AM - 10PM',
            ),
            Divider(color: AppColors.lightGrey),
            const PTRowElement(
              iconPath: 'assets/icons/bus.svg',
              travelMode: 'Bus',
              time: 'available 24hrs',
            ),
          ],
        ),
      ),
    );
  }
}
