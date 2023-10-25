import 'package:flutter/material.dart';

import 'products_manager.dart';
import 'user_product_list_tile.dart';

class UserProductsScreen extends StatelessWidget {
  const UserProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productsManager = ProductsManager();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sản phẩm của bạn'),
        actions: <Widget>[
          buildAddButton(),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          print('Làm mới sản phẩm');
          // Add your logic to refresh products here
        },
        child: buildUserProductListView(productsManager),
      ),
    );
  }

  Widget buildUserProductListView(ProductsManager productsManager) {
    return ListView.builder(
      itemCount: productsManager.itemCount,
      itemBuilder: (ctx, i) {
        return Column(
          children: [
            UserProductListTile(productsManager.items[i]),
            const Divider(),
          ],
        );
      },
    );
  }

  Widget buildAddButton() {
    return IconButton(
      icon: const Icon(Icons.add),
      onPressed: () {
        // Navigate to the "add product" or "edit product" screen
        print('Đến trang chỉnh sửa');
        // Add your navigation logic here
      },
    );
  }
}
