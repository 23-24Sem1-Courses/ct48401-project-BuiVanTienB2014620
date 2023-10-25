import 'package:flutter/material.dart';

import 'order_item_card.dart';
import 'order_manager.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('Building orders');
    final ordersManager = OrdersManager();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Đặt hàng'),
      ),
      body: ListView.builder(
        itemCount: ordersManager.orderCount,
        itemBuilder: (ctx, i) => OrderItemCard(ordersManager.orders[i]),
      ),
    );
  }
}
