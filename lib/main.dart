import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uitask/constants/theme.dart';
import 'package:uitask/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return Sizer(
      builder: (context, orientation, deviceType) { return MaterialApp(
        debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.theme,
      home: const HomePage(),
    );
        },
    );
  }
}

