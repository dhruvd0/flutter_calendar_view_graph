import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';

import 'model/event.dart';
import 'pages/mobile/mobile_home_page.dart';
import 'pages/web/web_home_page.dart';
import 'widgets/responsive_widget.dart';

DateTime get _now => DateTime.now();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CalendarControllerProvider<Event>(
      controller: EventController<Event>(),
      child: MaterialApp(
        title: 'Flutter Calendar Page Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        home: Scaffold(
          body: WeekView(
            

          ),
        ),
      ),
    );
  }
}
