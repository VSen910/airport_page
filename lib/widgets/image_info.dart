import 'package:airport_page/utils/colors.dart';
import 'package:airport_page/widgets/image_info_row_element.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageInfoWidget extends StatelessWidget {
  const ImageInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Image.asset(
            'assets/images/dubai.jpg',
            height: 300.h,
            fit: BoxFit.fitHeight,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 16.0,
            left: 16.0,
            right: 16.0,
          ),
          child: Container(
            // height: 130.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ImageInfoRowElement(
                        iconPath: 'assets/icons/cloudy.svg',
                        title: '19 C',
                        subtitle: 'Cloudy',
                      ),
                      ImageInfoRowElement(
                        iconPath: 'assets/icons/calender.svg',
                        title: '30 Jan',
                        subtitle: 'Mon',
                      ),
                      ImageInfoRowElement(
                        iconPath: 'assets/icons/clock.svg',
                        title: '8:45 PM',
                        subtitle: 'GMT+4',
                      ),
                      ImageInfoRowElement(
                        iconPath: 'assets/icons/currency.svg',
                        title: 'AED',
                        subtitle: '1\$=3.67AED',
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: AppColors.lightGrey,
                  height: 0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: TextButton.icon(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Getting directions'),
                            ),
                          );
                        },
                        style: TextButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        icon: SvgPicture.asset('assets/icons/directions.svg'),
                        label: Text(
                          'Get directions',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                      child: VerticalDivider(
                        color: AppColors.lightGrey,
                      ),
                    ),
                    Expanded(
                      child: TextButton.icon(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Calling the airport'),
                            ),
                          );
                        },
                        style: TextButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        icon: SvgPicture.asset('assets/icons/phone.svg'),
                        label: Text(
                          'Call airport',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
