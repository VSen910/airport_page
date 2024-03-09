import 'package:airport_page/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TSRowElement extends StatelessWidget {
  const TSRowElement({
    super.key,
    required this.iconPath,
    required this.numDollarSigns,
    required this.isLuxury,
  });

  final String iconPath;
  final int numDollarSigns;
  final bool isLuxury;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: AppColors.lightGrey,
          ),
        ),
        child: InkWell(
          onTap: () {},
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'You are taking a ${isLuxury ? 'luxury' : 'normal'} taxi',
                  ),
                ),
              );
            },
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                if (isLuxury)
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(4),
                        bottomLeft: Radius.circular(4),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 2.0,
                        horizontal: 4.0,
                      ),
                      child: Text(
                        'Luxury',
                        style: TextStyle(
                          color: AppColors.luxuryText,
                          fontSize: 10.sp,
                        ),
                      ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 76,
                        child: Image.asset(
                          iconPath,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: '\$' * numDollarSigns,
                          style: TextStyle(
                            color: AppColors.secondaryText,
                            fontSize: 11.sp,
                          ),
                          children: [
                            TextSpan(
                              text: '\$' * (5 - numDollarSigns),
                              style: TextStyle(
                                color: const Color(0xffdcdcdc),
                                fontSize: 11.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
