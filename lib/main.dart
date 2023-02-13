import 'package:flutter/material.dart';
import 'package:vaiva_1_exam/Views/Screens/Data_page.dart';

import 'Views/Screens/Home_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        'deta': (context) => data(),
      },
    ),
  );
}
