
import '../models/spare_part.dart';

final List<SparePart> spareParts = [
  SparePart(
    code: "OF-001",
    name: "Toyota Oil Filter",
    category: "Filter",
    brand: "Toyota",
    purchasePrice: 250,
    salePrice: 350,
    stock: 25,
  ),

  SparePart(
    code: "AF-002",
    name: "Honda Air Filter",
    category: "Filter",
    brand: "Honda",
    purchasePrice: 450,
    salePrice: 650,
    stock: 12,
  ),

  SparePart(
    code: "BP-003",
    name: "Brake Pad",
    category: "Brake",
    brand: "Bosch",
    purchasePrice: 1400,
    salePrice: 1800,
    stock: 8,
  ),

  SparePart(
    code: "SP-004",
    name: "Spark Plug",
    brand: "NGK",
    category: "Ignition",
    purchasePrice: 180,
    salePrice: 250,
    stock: 50,
  )
];