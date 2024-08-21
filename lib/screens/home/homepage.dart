import '../food/snack.dart';
import '../food/breakfast.dart';
import '../profile/profile.dart';
import 'home_widgets/app_bar.dart';
import 'home_widgets/side_bar.dart';
import 'home_widgets/custom_box.dart';
import 'home_widgets/today_text.dart';
import 'home_widgets/current_day.dart';
import 'package:flutter/material.dart';
import '../analytics/analyticsPage.dart';
import 'home_widgets/today_for_section.dart';
import 'home_widgets/looking_for_section.dart';
import 'home_widgets/daily_advice_section.dart';
import 'package:StudentFit/screens/food/lunch.dart';
import 'package:StudentFit/screens/food/dinner.dart';
import 'package:StudentFit/screens/login/login.dart';
import 'package:StudentFit/screens/schedule/schedulePage.dart';
import 'package:StudentFit/screens/schedule/calendarPage.dart';
import 'package:StudentFit/screens/welcomePages/widgets/app_text_styles.dart';




class HomePage extends StatelessWidget {
  final String appBarTitle;

  const HomePage({Key? key, required this.appBarTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/breakfast': (context) => BreakfastPage(),
        '/lunch': (context) => LunchPage(),
        '/snack': (context) => SnackPage(),
        '/dinner': (context) => DinnerPage(),
        '/homepage': (context) => const HomePage(
              appBarTitle: 'Home',
            ),

        '/profile': (context) => ProfilePage(),
        '/logout': (context) => LogInPage(),
        '/calendar': (context) => const CalendarPage(),
        '/schedule': (context) => const SchedulePage(),
        '/analytics': (context) => const AnalyticsPage(),
      },
      home: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Scaffold(
            appBar: CustomAppBar2(
              appBarTitle: appBarTitle,
              actions: [],
            ),
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TodayTextWidget(
                    textStyle: AppTextStyles.todayTextStyle,
                  ),
                  const CurrentDayWidget(),
                  CustomBox(),
                  const SizedBox(height: 10),
                  ConcreteLookingForSection(),
                  const SizedBox(height: 10),
                  DailyAdviceSection(),
                  const SizedBox(height: 20),
                  CustomBox2(),
                ],
              ),
            ),
            drawer: buildDrawer(context),
          );
        },
      ),
    );
  }
}
