import 'package:flutter/material.dart';
import '/screens/sign_in/sign_in_screen.dart';
import '/commons/size_config.dart';

class AvailableAccountText extends StatelessWidget {
  const AvailableAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Bạn đã có tài khoản VERSACE ? ",
          style: TextStyle(fontSize: getProportionateScreenWidth(13)),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignInScreen.routeName),
          child: Text(
            "Đăng nhập",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(13),
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
