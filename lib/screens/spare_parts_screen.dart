import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../widgets/spare_part_card.dart';

class SparePartsScreen extends StatefulWidget {
  const SparePartsScreen({super.key});

  @override
  State<SparePartsScreen> createState() => _SparePartsScreenState();
}

class _SparePartsScreenState extends State<SparePartsScreen> {
  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Spare Parts"),
      ),
      body: ListView.builder(
    itemCount: spareParts.length,
  itemBuilder: (context, index) {
    final part = spareParts[index];

    return SparePartCard(
      part:part      

    );
  },
),
    );
  }
}