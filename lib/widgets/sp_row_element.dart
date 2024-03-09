import 'package:airport_page/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SPRowElement extends StatelessWidget {
  const SPRowElement({
    super.key,
    required this.iconPath,
    required this.vehicle,
    required this.price,
  });

  final String iconPath;
  final String vehicle;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            iconPath,
            width: 20,
          ),
        ),
        Text(
          vehicle,
          style: TextStyle(
            color: AppColors.secondaryText,
            fontSize: 14.sp,
          ),
        ),
        Expanded(child: Container()),
        Text(
          price,
          style: TextStyle(fontSize: 14.sp),
        ),
        IconButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('The price for $vehicle is $price'),
              ),
            );
          },
          iconSize: 15,
          icon: const Icon(Icons.info_outline),
        ),
      ],
    );
  }
}
