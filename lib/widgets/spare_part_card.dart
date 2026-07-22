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
  final bool isLowStock = part.stock <= 10;
 return Card(
  child: Padding(
    padding: const EdgeInsets.all(12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Row(
          children: [
            const Icon(Icons.inventory_2),

            const SizedBox(width: 10),

            Text(
              part.name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),

          Text(
            "Code: ${part.code}",
          ),

          Text(
            "Brand: ${part.brand}",
          ),

          Text(
            "Category: ${part.category}",
          ),
      const SizedBox(height: 10),

       Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [

    Text(
      "Stock: ${part.stock} pcs",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: isLowStock ? Colors.red : Colors.green,
      ),
    ),

    Text(
      "৳ ${part.salePrice}",
      style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),

  ],
),
      ],
    ),
  ),
);
}
}