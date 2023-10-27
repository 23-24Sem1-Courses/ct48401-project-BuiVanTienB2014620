import 'package:flutter/material.dart';

import '../../models/product.dart';

class ProductsManager with ChangeNotifier {
  final List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Nồi cơm điện',
      description: 'Siêu tiết kiệm điện!',
      price: 100.000,
      imageUrl:
          'https://cohoi.tuoitre.vn/upload/hinhbaiviet/images/2020/Thang-06/17-06/170620_kingshop_1.jpg',
      isFavorite: true,
    ),
    Product(
      id: 'p2',
      title: 'Ấm nước siêu tốc ',
      description: 'Siêu tiết kiệm điện !',
      price: 59.000,
      imageUrl:
          'https://oanhson.com.vn/product_images/i/521/am-sieu-toc-sunhouse-shd1182-18l__15221_std.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Bếp điện từ',
      description: 'Chất lượng đến từ Nhật Bản.',
      price: 190.00,
      imageUrl: 'http://www.bepquangnam.vn/uploads/20180721/Untitled-11.jpg',
    ),
    Product(
      id: 'p4',
      title: 'Máy xây sinh tố',
      description: 'Tốc độ siêu mạnh',
      price: 490.000,
      imageUrl: 'https://anhchinh.vn/media/product/10999_10.jpg',
      isFavorite: true,
    ),
  ];

  int get itemCount => _items.length;

  List<Product> get items => [..._items];

  List<Product> get favoriteItems =>
      _items.where((item) => item.isFavorite).toList();

  Product? findById(String id) {
    try {
      return _items.firstWhere((item) => item.id == id);
    } catch (error) {
      return null;
    }
  }

  void addProduct(Product product) {
    _items.add(product.copyWith(id: 'p${DateTime.now().toIso8601String()}'));
    notifyListeners();
  }

  void updateProduct(Product product) {
    final index = _items.indexWhere((item) => item.id == product.id);
    if (index != -1) {
      _items[index] = product;
      notifyListeners();
    }
  }

  void toggleFavoriteStatus(Product product) {
    product.isFavorite = !product.isFavorite;
  }

  void deleteProduct(String id) {
    _items.removeWhere((item) => item.id == id);
    notifyListeners();
  }
}
