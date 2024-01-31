import 'package:fit4sure/analytics/analytics.dart';
import 'package:fit4sure/coaches/coach_start_page.dart';
import 'package:fit4sure/homePages/entry_page.dart';
import 'package:fit4sure/homePages/entry_page_1.dart';
import 'package:fit4sure/homePages/home_page.dart';
import 'package:fit4sure/landingPage/landing_page.dart';
import 'package:fit4sure/plansPages/plans.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: 
        // LandingPage()
            EntryPage(
          currentIndex: 0,
          token: "",
        ),
        );
  }
}
