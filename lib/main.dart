import 'package:flutter/material.dart';
import 'constants.dart';
import 'screens/input_page.dart';
import 'screens/bmiResult.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
      },
      theme: ThemeData(
        scaffoldBackgroundColor: kMasterColor,
        textTheme: TextTheme(
          displayLarge: TextStyle(
            color: Colors.white,
          ),
          displayMedium: TextStyle(
            color: Colors.white,
          ),
          displaySmall: TextStyle(
            color: Colors.white,
          ),
          labelMedium: TextStyle(
            color: Colors.white,
          ),
          labelSmall: TextStyle(
            color: Colors.white,
          ),
          labelLarge: TextStyle(
            color: Colors.white,
          ),
          bodyLarge: TextStyle(
            color: Colors.white,
          ),
          bodyMedium: TextStyle(
            color: Colors.white,
          ),
          bodySmall: TextStyle(
            color: Colors.white,
          ),
        ),
        colorScheme: ColorScheme(
          primary: kMasterColor,
          onPrimary: Colors.white,
          background: kMasterColor,
          onBackground: Colors.black54,
          brightness: Brightness.light,
          secondary: Colors.purple,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.yellow,
          surface: Colors.pink,
          onSurface: Colors.black87,
          primaryContainer: Colors.lightBlue,
        ),
      ),
    );
  }
}
