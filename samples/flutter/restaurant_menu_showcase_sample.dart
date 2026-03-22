import 'package:flutter/material.dart';

import 'mock_data.dart';

class RestaurantMenuShowcaseSample extends StatefulWidget {
  const RestaurantMenuShowcaseSample({super.key});

  @override
  State<RestaurantMenuShowcaseSample> createState() =>
      _RestaurantMenuShowcaseSampleState();
}

class _RestaurantMenuShowcaseSampleState
    extends State<RestaurantMenuShowcaseSample> {
  String activeCategoryId = showcaseCategories.first.id;

  @override
  Widget build(BuildContext context) {
    final products = showcaseProducts
        .where((product) => product.categoryId == activeCategoryId)
        .toList(growable: false);

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: const Text('Restaurant Menu Sample'),
        backgroundColor: Colors.transparent,
        foregroundColor: const Color(0xFF111827),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 54,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final category = showcaseCategories[index];
                final isActive = category.id == activeCategoryId;
                return ChoiceChip(
                  label: Text(category.label),
                  selected: isActive,
                  onSelected: (_) {
                    setState(() => activeCategoryId = category.id);
                  },
                  selectedColor: const Color(0xFF111827),
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: isActive ? Colors.white : const Color(0xFF111827),
                  ),
                  side: const BorderSide(color: Color(0xFFE5E7EB)),
                  backgroundColor: Colors.white,
                );
              },
              separatorBuilder: (_, __) => const SizedBox(width: 8),
              itemCount: showcaseCategories.length,
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: products.length,
              separatorBuilder: (_, __) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                final product = products[index];
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(color: const Color(0xFFE5E7EB)),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Container(
                        width: 92,
                        height: 92,
                        decoration: BoxDecoration(
                          color: product.color,
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      const SizedBox(width: 14),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (product.isPopular)
                              Container(
                                margin: const EdgeInsets.only(bottom: 8),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFE08A),
                                  borderRadius: BorderRadius.circular(999),
                                ),
                                child: const Text(
                                  'Popular',
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            Text(
                              product.name,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                                color: Color(0xFF111827),
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              product.description,
                              style: const TextStyle(
                                fontSize: 14,
                                height: 1.45,
                                color: Color(0xFF6B7280),
                              ),
                            ),
                            const SizedBox(height: 12),
                            Row(
                              children: [
                                Text(
                                  product.priceLabel,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xFF111827),
                                  ),
                                ),
                                const Spacer(),
                                FilledButton(
                                  onPressed: () {},
                                  style: FilledButton.styleFrom(
                                    backgroundColor: const Color(0xFF22A45D),
                                  ),
                                  child: const Text('Add'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

