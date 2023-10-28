import 'package:flutter/material.dart';

class AppBanner extends StatelessWidget {
  const AppBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 60.0),
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 94.0,
      ),
      transform: Matrix4.translationValues(4.5, 0.0, 0.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.teal,
        boxShadow: const [
          BoxShadow(
            blurRadius: 9,
            color: Colors.white,
            offset: Offset(0, 9),
          )
        ],
      ),
      child: Text(
        'Shop DT',
        style: TextStyle(
          color: const Color.fromARGB(255, 185, 155, 155),
          fontSize: 50,
          fontFamily: 'Anton',
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
