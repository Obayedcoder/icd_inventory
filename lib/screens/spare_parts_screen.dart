import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../widgets/spare_part_card.dart';
import '../widgets/app_search_bar.dart';

class SparePartsScreen extends StatefulWidget {
  const SparePartsScreen({super.key});

  @override
  State<SparePartsScreen> createState() => _SparePartsScreenState();

}

class _SparePartsScreenState extends State<SparePartsScreen> {
    List filteredParts = spareParts;
  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Spare Parts"),
      ),
      body: Column(
  children: [
    AppSearchBar(
      hintText: "Search Parts...",
      onChanged: (value) {
  setState(() {
    filteredParts = spareParts.where((part) {
      return part.name.toLowerCase().contains(value.toLowerCase()) ||
    part.code.toLowerCase().contains(value.toLowerCase()) ||
    part.brand.toLowerCase().contains(value.toLowerCase()) ||
    part.category.toLowerCase().contains(value.toLowerCase());
      
    }).toList();
  });
},
    ),

    Expanded(
      child: ListView.builder(
        itemCount: filteredParts.length,
        itemBuilder: (context, index) {
          final part = filteredParts[index];

          return SparePartCard(
            part: part,
          );
        },
      ),
    ),
  ],
),
    );
  }
}