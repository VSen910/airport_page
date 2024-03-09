import 'package:airport_page/utils/colors.dart';
import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Chips extends StatefulWidget {
  const Chips({
    super.key,
    required this.options,
    required this.borderRadius,
    required this.fontSize,
  });

  final List<String> options;
  final double borderRadius;
  final int fontSize;

  @override
  State<Chips> createState() => _ChipsState();
}

class _ChipsState extends State<Chips> {
  int tag = 0;

  @override
  Widget build(BuildContext context) {
    return ChipsChoice.single(
      onChanged: (val) {
        setState(() {
          tag = val;
        });
      },
      value: tag,
      choiceStyle: C2ChipStyle.filled(
        height: 40,
        borderRadius: BorderRadius.circular(widget.borderRadius),
        foregroundStyle: TextStyle(
          fontSize: widget.fontSize.sp,
          fontFamily: 'UberMove',
        ),
        color: AppColors.lightGrey,
        selectedStyle: C2ChipStyle(
          height: 40,
          borderRadius: BorderRadius.circular(widget.borderRadius),
          foregroundStyle: TextStyle(
            fontSize: widget.fontSize.sp,
            fontFamily: 'UberMove',
            color: Colors.white,
          ),
          backgroundColor: AppColors.primary,
        ),
      ),
      choiceItems: C2Choice.listFrom<int, String>(
        source: widget.options,
        value: (i, v) => i,
        label: (i, v) => v,
      ),
    );
  }
}
