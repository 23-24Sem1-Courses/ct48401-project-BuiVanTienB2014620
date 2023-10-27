import 'package:flutter/material.dart';

import '../../models/cart_item.dart';
import '../../models/order_item.dart';

class OrdersManager with ChangeNotifier {
  final List<OrderItem> _orders = [
    OrderItem(
      id: 'o1',
      amount: 200.000,
      products: [
        CartItem(
          id: 'c1',
          title: 'Nồi Cơm Điện',
          price: 100.000,
          quantity: 2,
        ),
      ],
      dateTime: DateTime.now(),
    ),
  ];

  int get orderCount {
    return _orders.length;
  }

  List<OrderItem> get orders {
    return [..._orders];
  }
}