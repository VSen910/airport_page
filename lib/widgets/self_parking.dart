import 'package:airport_page/utils/styles.dart';
import 'package:airport_page/widgets/chips.dart';
import 'package:airport_page/widgets/sp_row_element.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelfParking extends StatelessWidget {
  const SelfParking({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: AppStyles.boxDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 16.0,
              left: 16.0,
            ),
            child: Text(
              'Self parking',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const Chips(
            options: ['T1', 'T2'],
            borderRadius: 10,
            fontSize: 16,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: SPRowElement(
              iconPath: 'assets/icons/two_wheeler.svg',
              vehicle: 'Two wheeler parking',
              price: 'AED 50 / day',
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: SPRowElement(
              iconPath: 'assets/icons/car.svg',
              vehicle: 'Car parking',
              price: 'AED 100 / day',
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: SPRowElement(
              iconPath: 'assets/icons/electric_car.svg',
              vehicle: 'Electric car parking',
              price: 'AED 100 / day',
            ),
          ),
          const SizedBox(height: 8.0),
        ],
      ),
    );
  }
}
