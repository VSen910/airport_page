import 'package:airport_page/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForexRowElement extends StatefulWidget {
  const ForexRowElement({super.key, required this.title, required this.address});

  final String title;
  final String address;

  @override
  State<ForexRowElement> createState() => _ForexRowElementState();
}

class _ForexRowElementState extends State<ForexRowElement> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        widget.title,
        style: TextStyle(fontSize: 14.sp),
      ),
      shape: const RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.transparent,
        ),
      ),
      trailing: _isExpanded
          ? const Icon(Icons.keyboard_arrow_up_rounded)
          : const Icon(Icons.keyboard_arrow_down_rounded),
      onExpansionChanged: (val) {
        setState(() {
          _isExpanded = val;
        });
      },
      children: [
        ListTile(
          title: Text(
            widget.address,
            style: TextStyle(color: AppColors.secondaryText, fontSize: 12.sp),
          ),
        )
      ],
    );
  }
}
