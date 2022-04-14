import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medical_appointment/screens/call_screen.dart';
import 'package:medical_appointment/screens/login_screen.dart';
import 'package:medical_appointment/screens/nav_screen.dart';
import 'package:medical_appointment/screens/onboarding_screen.dart';
import 'package:medical_appointment/screens/settings_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'screens/home_screen.dart';

late SharedPreferences sp;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sp = await SharedPreferences.getInstance();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  bool? _getStatus() {
    try {
      final bool? status = sp.getBool('isLoggedIn');
      if (status != null) {
        return status;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medical Appointment',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
        scaffoldBackgroundColor: const Color(0xff0A161D),
        primaryColor: const Color(0xff0A161D),
        accentColor: const Color(0xff2732EA),
      ),
      home: (_getStatus() != null && _getStatus() == true)
          ? const NavScreen()
          : const OnBoardingScreen(),
    );
  }
}
