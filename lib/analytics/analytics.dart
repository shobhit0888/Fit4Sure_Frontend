import 'package:fit4sure/analytics/analytics_home_page.dart';
import 'package:fit4sure/analytics/gender_widget.dart';
import 'package:fit4sure/analytics/plans_page.dart';
import 'package:fit4sure/plansPages/plans.dart';
import 'package:fit4sure/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class AnalyticsPage extends StatefulWidget {
  int? index;
  AnalyticsPage({super.key, this.index});
  //  AnalyticsPage({super.key});

  @override
  State<AnalyticsPage> createState() => _AnalyticsPageState();
}

class _AnalyticsPageState extends State<AnalyticsPage> {
  final analyticsScreens = [AnalyticsHomePage(), AnalyticsPlansPage()];
  List<DateTime> _dates = [];
  @override
  void initState() {
    super.initState();
    _dates = _generateDates();
  }

  List<DateTime> _generateDates() {
    var currentDate = DateTime.now();
    List<DateTime> dates = [];

    for (var i = 0; i < 7; i++) {
      // DateTime date = currentDate.add(Duration(days: i));
      dates.add(currentDate.add(Duration(days: i)));
      // print(dates[i]);
      // String date_str = date.toString();
    }
    for (var i = 0; i < 7; i++) {}
    return dates;
  }

  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    // print(_selectedDate);
    return Scaffold(
      body: SingleChildScrollView(
        child: analyticsScreens[widget.index!],
      ),
    );
  }
}
