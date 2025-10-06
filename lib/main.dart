import 'package:flutter/material.dart';
import 'config/app_theme.dart';

import 'screens/sign_up_screen.dart';
import 'screens/details_screen.dart';
import 'screens/otp_screen.dart';
import 'screens/home_screen.dart';
import 'screens/search_location_screen.dart';
import 'screens/ride_details_screen.dart';
import 'screens/looking_for_rider_screen.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const QuickShawApp());
}

class QuickShawApp extends StatelessWidget {
  const QuickShawApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QuickShaw',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      initialRoute: '/sign-up',
      routes: {
        '/sign-up': (_) => const SignUpScreen(),
        '/otp': (_) => const OTPScreen(),
        '/details': (_) => const DetailsScreen(),
        '/splash': (_) => const SplashScreen(),
        '/home': (_) => const HomeScreen(),
        '/search-location': (_) => const SearchLocationScreen(),
        '/ride-details': (_) => const RideDetailsScreen(),
        '/looking-for-rider': (_) => const LookingForRiderScreen(),
      },
    );
  }
}