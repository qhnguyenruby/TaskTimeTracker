import 'package:flutter/material.dart';
import '/screens/sign_up/sign_up_screen.dart';
import '/commons/size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Bạn mới biết đến VERSACE ? ",
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(
            "Đăng ký",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
