import 'package:flutter/material.dart';
import '/commons/size_config.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.text,
    this.press,
    this.color,
    this.height,
    this.width,
  }) : super(key: key);
  final String? text;
  final Function? press;
  final Color? color;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(width!),
      height: getProportionateScreenHeight(height!),
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          primary: Colors.white,
          backgroundColor: color!,
        ),
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(11),
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
