import 'package:airport_page/utils/colors.dart';
import 'package:airport_page/utils/styles.dart';
import 'package:airport_page/widgets/ca_row_element.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactAirport extends StatelessWidget {
  const ContactAirport({super.key});

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
              'Contact airport',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10),
            const CARowElement(contact: 'Police'),
            Divider(color: AppColors.lightGrey),
            const CARowElement(contact: 'Lost and found'),
            Divider(color: AppColors.lightGrey),
            const CARowElement(contact: 'Transport'),
            Divider(color: AppColors.lightGrey),
            const CARowElement(contact: 'Head office'),
          ],
        ),
      ),
    );
  }
}
