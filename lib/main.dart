import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ui/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => ProductsManager(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => CartManager(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => OrdersManager(),
        ),
      ],
      child: MaterialApp(
        title: 'Shop Gia Dụng',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Lato',
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.blue,
          ).copyWith(
            secondary: Colors.deepOrange,
          ),
        ),
        home: const ProductsOverviewScreen(),
        routes: {
          CartScreen.routeName: (ctx) => const CartScreen(),
          OrdersScreen.routeName: (ctx) => const OrdersScreen(),
          UserProductsScreen.routeName: (ctx) => const UserProductsScreen(),
        },
// Các route với những xử lý nghiệp vụ trước khi chuyển trang.
// onGenerateRoute sẽ được gọi khi không tìm thấy route yêu cầu
// trong thuộc tính routes ở trên.
        onGenerateRoute: (settings) {
          if (settings.name == ProductDetailScreen.routeName) {
            final productId = settings.arguments as String;
            return MaterialPageRoute(
              settings: settings,
              builder: (ctx) {
                return ProductDetailScreen(
                  ProductsManager().findById(productId)!,
                );
              },
            );
          }
          return null;
        },
      ),
    );
  }
}
