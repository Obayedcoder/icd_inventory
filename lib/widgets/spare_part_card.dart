import 'package:flutter/material.dart';
import '../models/spare_part.dart';

class SparePartCard extends StatelessWidget {
  final SparePart part;

  const SparePartCard({
    super.key,
    required this.part,
  });

  @override
Widget build(BuildContext context) {
  return Card(
    margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
    child: ListTile(
      leading: const Icon(Icons.inventory_2),
      title: Text(part.name),
      subtitle: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text("Code: ${part.code}"),
    Text("Brand: ${part.brand}"),
    Text("Category: ${part.category}"),
    Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Stock: ${part.stock}"),
                  Text("tk: ${part.salePrice}"),
                ],
              ),
  ],
),
               
      
    ),
  );
}
}