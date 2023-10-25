import 'package:flutter/material.dart';

import '../../models/product.dart';

class UserProductListTile extends StatelessWidget {
  final Product product;

  UserProductListTile(
    this.product, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(product.title),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(product.imageUrl),
      ),
      trailing: SizedBox(
        width: 100,
        child: Row(
          children: <Widget>[
            buildEditButton(context),
            buildDeleteButton(context),
          ],
        ),
      ),
    );
  }

  Widget buildDeleteButton(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.delete),
      onPressed: () {
        print('Xóa sản phẩm');
        // Add your logic to delete the product here
      },
      color: Theme.of(context).colorScheme.error,
    );
  }

  Widget buildEditButton(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.edit),
      onPressed: () {
        print('Chỉnh sửa sản phẩm');
        // Add your logic to navigate to the edit product screen here
      },
      color: Theme.of(context).primaryColor,
    );
  }
}
