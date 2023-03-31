import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/event-details.dart';
import 'package:myapp/page-1/search.dart';
import 'package:myapp/routes.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/home.dart';
import 'package:myapp/page-1/event-details.dart';
import 'package:myapp/page-1/search.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => Home(),
        MyRoutes.eventdetailsroute: (context) => Event_Details(),
        MyRoutes.homeroute: (context) => Home(),
        MyRoutes.searchroute: (context) => Search(),
      },
    );
  }
}
