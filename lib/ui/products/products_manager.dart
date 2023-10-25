import '../../models/product.dart';

class ProductsManager {
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
          'https://cohoi.tuoitre.vn/upload/hinhbaiviet/images/2020/Thang-06/17-06/170620_kingshop_1.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Bếp điện từ',
      description: 'Chất lượng đến từ Nhật Bản.',
      price: 19.99,
      imageUrl: 'http://www.bepquangnam.vn/uploads/20180721/Untitled-11.jpg',
    ),
    Product(
      id: 'p4',
      title: 'Máy xây sinh tố',
      description: 'Tốc độ siêu mạnh',
      price: 49.99,
      imageUrl:
          '	https://cohoi.tuoitre.vn/upload/lib_item/240723_kingshop_1.jpg',
      isFavorite: true,
    ),
  ];

  int get itemCount => _items.length;

  List<Product> get items => [..._items];

  List<Product> get favoriteItems =>
      _items.where((item) => item.isFavorite).toList();
}
