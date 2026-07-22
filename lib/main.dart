import 'package:flutter/material.dart';
import 'screens/dashboard_screen.dart';
import 'core/theme/app_theme.dart';

void main() {
  runApp(const ICDInventoryApp());
}

class ICDInventoryApp extends StatelessWidget {
  const ICDInventoryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ICD Inventory',
       theme: AppTheme.lightTheme, //ThemeData
      home: const DashboardScreen(),
    );
  }
}