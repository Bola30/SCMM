import 'package:flutter/material.dart';
import 'package:smcc_app/Features/social/presentation/widgets/bottom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       theme: ThemeData(
        fontFamily: 'SFPro', 
      ),
      locale: const Locale('ar'), 
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl, 
          child: child!,
        );
      },
      home: const CustomBottomNav(), 
    );
  }
}
