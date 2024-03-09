import 'package:airport_page/utils/styles.dart';
import 'package:airport_page/widgets/ts_row_element.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TaxiService extends StatelessWidget {
  const TaxiService({super.key});

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
              'Taxi Service',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              children: const [
                TSRowElement(
                  iconPath: 'assets/images/uber.png',
                  numDollarSigns: 4,
                  isLuxury: false,
                ),
                TSRowElement(
                  iconPath: 'assets/images/careem.png',
                  numDollarSigns: 4,
                  isLuxury: false,
                ),
                TSRowElement(
                  iconPath: 'assets/images/yango.png',
                  numDollarSigns: 3,
                  isLuxury: false,
                ),
                TSRowElement(
                  iconPath: 'assets/images/blacklane.png',
                  numDollarSigns: 5,
                  isLuxury: true,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
