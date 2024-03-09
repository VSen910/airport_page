import 'package:airport_page/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PTRowElement extends StatelessWidget {
  const PTRowElement({
    super.key,
    required this.iconPath,
    required this.travelMode,
    required this.time,
  });

  final String iconPath;
  final String travelMode;
  final String time;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('You will be taking a $travelMode'),
            ),
          );
        },
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                iconPath,
                width: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                travelMode,
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
            Expanded(child: Container()),
            Text(
              time,
              style: TextStyle(
                fontSize: 11.sp,
                color: AppColors.secondaryText,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Icon(
                Icons.arrow_forward_rounded,
                color: AppColors.primary,
              ),
            ),
            // IconButton(
            //   onPressed: () {},
            //   icon: Icon(
            //     Icons.arrow_forward_rounded,
            //     color: AppColors.primary,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
