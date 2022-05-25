import 'package:flutter/material.dart';
import 'package:lms_app/Screens/student_homescreen.dart';
import './providers/announcements_provider.dart';
import './providers/courses_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CoursesProvider(),
        ),
        // ChangeNotifierProvider(
        //   create: (context) => AnnouncementsProvider(),
        // )
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: StudentHomeScreen(),
        debugShowCheckedModeBanner: true, //change to false later
      ),
    );
  }
}
