import 'analyticsWidgets/bmi.dart';
import 'package:flutter/material.dart';
import 'analyticsWidgets/separator.dart';
import 'analyticsWidgets/bodyComposition.dart';
import 'package:student_fit/screens/home/home_widgets/app_bar.dart';
import 'package:student_fit/screens/home/home_widgets/side_bar.dart';




class AnalyticsPage extends StatelessWidget {
  const AnalyticsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar2(appBarTitle: "Analytics", actions: []),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 10),
              BMICalculatorWidget(),
              separator(),
              const SizedBox(height: 40),
              BodyComposition(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      drawer: buildDrawer(context),
    );
  }
}