import 'package:airport_page/utils/colors.dart';
import 'package:airport_page/widgets/chips.dart';
import 'package:airport_page/widgets/contact_airport.dart';
import 'package:airport_page/widgets/forex.dart';
import 'package:airport_page/widgets/image_info.dart';
import 'package:airport_page/widgets/public_transport.dart';
import 'package:airport_page/widgets/self_parking.dart';
import 'package:airport_page/widgets/taxi_service.dart';
import 'package:airport_page/widgets/terminal_map.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.transparent,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20.sp,
                color: AppColors.titleText,
              ),
            ),
            Text(
              'Dubai ● 🇦🇪 United Arab Emirates',
              style: TextStyle(
                fontSize: 12.sp,
                color: AppColors.secondaryText,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: ImageInfoWidget(),
                ),
                const Chips(
                  options: ['Transport', 'Terminal', 'Forex', 'Contact info'],
                  borderRadius: 30,
                  fontSize: 12,
                ),
                const TaxiService(),
                const SizedBox(height: 20),
                const PublicTransport(),
                const SizedBox(height: 20),
                const SelfParking(),
                const SizedBox(height: 20),
                const TerminalMap(),
                const SizedBox(height: 20),
                const Forex(),
                const SizedBox(height: 20),
                const ContactAirport(),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Getting directions'),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                          icon: SvgPicture.asset(
                            'assets/icons/directions_white.svg',
                            height: 25,
                          ),
                          label: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Text(
                              'Get directions',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 3),
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Calling the airport'),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                          icon: const Icon(
                            Icons.phone,
                            color: Colors.white,
                            size: 25,
                          ),
                          label: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Text(
                              'Call airport',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
