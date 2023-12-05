import 'package:flutter/material.dart';
import 'package:pets/models/Appointment.dart';
import 'package:pets/models/splash%20screen.dart';

import 'models/Doctors.dart';
import 'models/Setting.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Setting (),
    );
  }
}
