import 'package:airport_page/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CARowElement extends StatelessWidget {
  const CARowElement({super.key, required this.contact});

  final String contact;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          contact,
          style: TextStyle(fontSize: 16.sp),
        ),
        Expanded(child: Container()),
        Container(
          width: 60,
          decoration: BoxDecoration(
            color: AppColors.lightGrey,
            borderRadius: BorderRadius.circular(30),
          ),
          child: IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Calling $contact'),
                ),
              );
            },
            icon: Icon(
              Icons.phone,
              color: AppColors.primary,
            ),
          ),
        ),
      ],
    );
  }
}
