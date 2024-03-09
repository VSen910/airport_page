import 'package:airport_page/screens/home.dart';
import 'package:airport_page/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 851),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'UberMove',
            appBarTheme: Theme.of(context)
                .appBarTheme
                .copyWith(systemOverlayStyle: AppStyles.systemUiOverlayStyle),
            useMaterial3: true,
          ),
          home: const Home(title: 'Dubai Airport - DXB'),
        );
      },
    );
  }
}
