import 'package:flutter/material.dart';

class AppBanner extends StatelessWidget {
  const AppBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        width: 400, // Điều chỉnh chiều rộng
        height: 100, // Điều chỉnh chiều cao
        margin: const EdgeInsets.only(bottom: 60.0),
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.teal,
          boxShadow: const [
            BoxShadow(
              blurRadius: 4,
              color: Colors.white,
              offset: Offset(0, 9),
            )
          ],
        ),
        child: Center(
          child: Text(
            'Shop DT ',
            style: TextStyle(
              color: const Color.fromARGB(255, 185, 155, 155),
              fontSize: 50,
              fontFamily: 'Anton',
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
