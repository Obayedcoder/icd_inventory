import 'package:flutter/material.dart';
import 'screens/dashboard_screen.dart';

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
      theme: ThemeData(
  useMaterial3: true,
  colorSchemeSeed: Colors.green,
),
      home: const DashboardScreen(),
    );
  }
}