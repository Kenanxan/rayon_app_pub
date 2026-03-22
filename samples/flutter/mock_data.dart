import 'package:flutter/material.dart';

class ShowcaseCategory {
  const ShowcaseCategory({
    required this.id,
    required this.label,
  });

  final String id;
  final String label;
}

class ShowcaseProduct {
  const ShowcaseProduct({
    required this.id,
    required this.categoryId,
    required this.name,
    required this.description,
    required this.priceLabel,
    required this.isPopular,
    required this.color,
  });

  final String id;
  final String categoryId;
  final String name;
  final String description;
  final String priceLabel;
  final bool isPopular;
  final Color color;
}

class ShowcaseOrder {
  const ShowcaseOrder({
    required this.code,
    required this.serviceLabel,
    required this.statusLabel,
    required this.totalLabel,
    required this.createdLabel,
  });

  final String code;
  final String serviceLabel;
  final String statusLabel;
  final String totalLabel;
  final String createdLabel;
}

const showcaseCategories = <ShowcaseCategory>[
  ShowcaseCategory(id: 'breakfast', label: 'Breakfast'),
  ShowcaseCategory(id: 'dessert', label: 'Dessert'),
  ShowcaseCategory(id: 'drinks', label: 'Drinks'),
];

const showcaseProducts = <ShowcaseProduct>[
  ShowcaseProduct(
    id: 'p1',
    categoryId: 'breakfast',
    name: 'Signature Breakfast Tray',
    description: 'Eggs, simit, cheese, fruit, tea service',
    priceLabel: '18.00 AZN',
    isPopular: true,
    color: Color(0xFFF5B85A),
  ),
  ShowcaseProduct(
    id: 'p2',
    categoryId: 'dessert',
    name: 'Chocolate Lava Cake',
    description: 'Warm center with vanilla cream',
    priceLabel: '9.50 AZN',
    isPopular: false,
    color: Color(0xFF7B77FF),
  ),
  ShowcaseProduct(
    id: 'p3',
    categoryId: 'drinks',
    name: 'Fresh Lemonade',
    description: 'Cold pressed and lightly sweetened',
    priceLabel: '4.50 AZN',
    isPopular: false,
    color: Color(0xFF48BFA4),
  ),
];

const showcaseOrders = <ShowcaseOrder>[
  ShowcaseOrder(
    code: '#1842',
    serviceLabel: 'Restaurant',
    statusLabel: 'Delivered',
    totalLabel: '24.00 AZN',
    createdLabel: '22 Mar 2026 - 19:42',
  ),
  ShowcaseOrder(
    code: '#1838',
    serviceLabel: 'Courier',
    statusLabel: 'In progress',
    totalLabel: '8.50 AZN',
    createdLabel: '22 Mar 2026 - 17:05',
  ),
  ShowcaseOrder(
    code: '#1829',
    serviceLabel: 'Market',
    statusLabel: 'Cancelled',
    totalLabel: '13.20 AZN',
    createdLabel: '21 Mar 2026 - 21:14',
  ),
];
