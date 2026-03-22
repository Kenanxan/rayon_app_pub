import 'package:flutter/material.dart';

import 'mock_data.dart';

class OrderHistoryShowcaseSample extends StatelessWidget {
  const OrderHistoryShowcaseSample({super.key});

  Color _statusColor(String label) {
    switch (label) {
      case 'Delivered':
        return const Color(0xFF16A34A);
      case 'In progress':
        return const Color(0xFF2563EB);
      case 'Cancelled':
        return const Color(0xFFDC2626);
      default:
        return const Color(0xFF6B7280);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6FA),
      appBar: AppBar(
        title: const Text('Order History Sample'),
        backgroundColor: Colors.transparent,
        foregroundColor: const Color(0xFF111827),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: showcaseOrders.length,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final order = showcaseOrders[index];
          return Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: const Color(0xFFE5E7EB)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '${order.serviceLabel} ${order.code}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF111827),
                        ),
                      ),
                    ),
                    Text(
                      order.totalLabel,
                      style: const TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Color(0xFFF27A1A),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  order.createdLabel,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Color(0xFF6B7280),
                  ),
                ),
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: _statusColor(order.statusLabel).withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(999),
                  ),
                  child: Text(
                    order.statusLabel,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: _statusColor(order.statusLabel),
                    ),
                  ),
                ),
                const SizedBox(height: 14),
                Row(
                  children: [
                    OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.visibility_outlined),
                      label: const Text('View'),
                    ),
                    const SizedBox(width: 10),
                    FilledButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.replay_rounded),
                      label: const Text('Reorder'),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
