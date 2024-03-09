import 'package:airport_page/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageInfoRowElement extends StatelessWidget {
  const ImageInfoRowElement({
    super.key,
    required this.iconPath,
    required this.title,
    required this.subtitle,
  });

  final String iconPath;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: SvgPicture.asset(iconPath),
        ),
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16.sp),
        ),
        Text(
          subtitle,
          style: TextStyle(color: AppColors.secondaryText, fontSize: 11.sp),
        ),
        SizedBox(height: 10.h,),
      ],
    );
  }
}
