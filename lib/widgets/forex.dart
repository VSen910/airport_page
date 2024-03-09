import 'package:airport_page/utils/styles.dart';
import 'package:airport_page/widgets/forex_row_element.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Forex extends StatelessWidget {
  const Forex({super.key});

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
              left: 16.0,
              top: 16.0,
            ),
            child: Text(
              'Foreign exchange',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const ForexRowElement(
            title: 'Travelex',
            address:
                'Terminal 3-\nAirside Dept Downtown, Concourse B, Terminal 3, beside Winston Smoking room',
          ),
          const ForexRowElement(
            title: 'Al Ansari Exchange',
            address:
                'Terminal 3-\nAirside Dept Downtown, Concourse B, Terminal 3, beside Winston Smoking room',
          ),
          const ForexRowElement(
            title: 'Emirates NBD',
            address:
                'Terminal 3-\nAirside Dept Downtown, Concourse B, Terminal 3, beside Winston Smoking room',
          ),
        ],
      ),
    );
  }
}
