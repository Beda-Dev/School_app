import 'package:e_commerce/views/home_screen.dart';
import 'package:flutter/material.dart';
import './views/form.dart';
import 'utils/colors.dart';
import './views/home_work.dart';
import './views/calendar.dart';
import './views/stats_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/',
      //  routes: {
      // '/': (context) => const LoginForm(),
      //  '/Home' : (context) => const HomeScreen(),
      //  },
      debugShowCheckedModeBanner: false,
      title: 'School App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.blue800),
        useMaterial3: true,
      ),
      home: const LoginForm(),
    );
  }
}
