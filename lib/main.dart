import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page/screens/home_page.dart';
import 'package:login_page/screens/login_page.dart';
import 'package:login_page/screens/signup_page.dart';
import 'package:login_page/utils/routes.dart';
import 'package:login_page/widgets/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  loadSplashScreen() async {
    return ('splashScreen');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        // fontFamily: GoogleFonts.raleway().fontFamily,
        textTheme: TextTheme(
          bodyText1: GoogleFonts.raleway(
            color: Colors.white,
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
      ),
      // initialRoute: 'Loginpage',
      routes: {
        MyRoutes.home: (context) => LoginPage(),
        MyRoutes.loginPage: (context) => LoginPage(),
        MyRoutes.signUpPage: (context) => SignUpPage(),
        "splashScreen": (context) => SplashScreen(),
      },
    );
  }
}
