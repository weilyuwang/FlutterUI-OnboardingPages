import 'package:flutter/material.dart';
import 'package:onboarding/provider/color_provider.dart';
import 'package:provider/provider.dart';
import './screens/onboarding/onboarding.dart';
import './themes/styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OnBoarding Demo',
      theme: appTheme(),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (BuildContext context) => ColorProvider(),
        child: Onboarding(),
      ),
    );
  }
}
