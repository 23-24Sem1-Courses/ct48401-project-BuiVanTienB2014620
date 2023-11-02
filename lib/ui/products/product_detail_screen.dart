import 'package:flutter/material.dart';

import '../../models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  const ProductDetailScreen(
    this.product, {
    super.key,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.network(
                product.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 3), // 5px left padding
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.start, // Move the stars to the left
                children: <Widget>[
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  for (int i = 0; i < 4; i++)
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 20,
                    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5), // 5px right padding
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.end, // Move "Hà Nội" to the right
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    color: Colors.blue, // Set location icon color to sea-blue
                    size: 20,
                  ),
                  Text(
                    'Hà Nội',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '${product.price.toStringAsFixed(3)} ₫', // Display price with "₫"
              style: TextStyle(
                color: Colors.black, // Set price color to black
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Text(
                product.description,
                textAlign: TextAlign.center,
                softWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
