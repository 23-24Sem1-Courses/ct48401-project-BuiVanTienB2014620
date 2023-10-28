import 'package:flutter/material.dart';

import 'app_banner.dart';
import 'auth_card.dart';

class AuthScreen extends StatelessWidget {
  static const routeName = '/auth';

  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://techrum.vn/chevereto/images/2017/05/21/1tTOV.jpg'), // Đặt đường dẫn đến hình ảnh nền của bạn
                fit: BoxFit
                    .cover, // Có thể điều chỉnh để phù hợp với nhu cầu của bạn
              ),
            ),
          ),
          // Container(
          //   decoration: BoxDecoration(
          //     gradient: LinearGradient(
          //       colors: [
          //         const Color.fromRGBO(215, 117, 255, 1).withOpacity(0.5),
          //         const Color.fromRGBO(255, 188, 117, 1).withOpacity(0.9),
          //       ],
          //       begin: Alignment.topLeft,
          //       end: Alignment.bottomRight,
          //       stops: const [0, 1],
          //     ),
          //   ),
          // ),
          SingleChildScrollView(
            child: SizedBox(
              height: deviceSize.height,
              width: deviceSize.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Flexible(
                    child: AppBanner(),
                  ),
                  Flexible(
                    flex: deviceSize.width > 600 ? 2 : 1,
                    child: const AuthCard(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
