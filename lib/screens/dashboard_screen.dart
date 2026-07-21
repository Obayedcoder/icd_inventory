import 'spare_parts_screen.dart';
import 'package:flutter/material.dart';
import 'stock_in_screen.dart';
import 'stock_out_screen.dart';
import 'reports_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ICD Inventory"),
        centerTitle: true,
        actions: [
  IconButton(
    onPressed: () {},
    icon: const Icon(Icons.search),
  ),
]
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Welcome, Admin 👋",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 20),

            Card(
              child: ListTile(
                leading: const Icon(Icons.inventory),
                title: const Text("Spare Parts"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                 Navigator.push(
                    context,
                  MaterialPageRoute(
                  builder: (context) => const SparePartsScreen(),
                  ),
                );
              },
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(Icons.shopping_cart),
                title: const Text("Stock Out"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const StockOutScreen(),
                  ),
                );
              },
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(Icons.local_shipping),
                title: const Text("Stock In"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                 Navigator.push(
                    context,
                  MaterialPageRoute(
                  builder: (context) => const StockInScreen(),
                  ),
                );
              },
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(Icons.bar_chart),
                title: const Text("Reports"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ReportsScreen(),
                  ),
                );
              },
              ),
            ),

            const Spacer(),

            const Text(
              "Version 1.0",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}