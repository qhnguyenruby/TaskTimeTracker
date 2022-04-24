import 'package:flutter/material.dart';
import '/commons/size_config.dart';

const kPrimaryColor = Color(0xfffea200);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

const kAnimationDuration = Duration(milliseconds: 200);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]");
final RegExp phoneNumberValidatorRegExp = RegExp(r"^(?:[+0]9)?[0-9]{10}$");
const String kEmailNullError = "Nhập vào email của bạn";
const String kInvalidEmailError = "Email không hợp lệ";
const String kPassNullError = "Nhập vào mật khẩu của bạn";
const String kConfirmPassNullError = "Xác nhận mật khẩu của bạn";
const String kShortPassError = "Mật khẩu quá ngắn";
const String kMatchPassError = "Xác nhận mật khẩu không đúng";
const String kUsernameNullError = "Nhập vào tên đăng nhập của bạn";
const String kFullNameNullError = "Nhập vào họ tên của bạn";
const String kPhoneNumberNullError = "Nhập vào số điện thoại của bạn";
const String kInvalidPhoneNumberError = "Số điện thoại không hợp lệ";
const String kAddressNullError = "Nhập vào địa chỉ của bạn";

// const SERVER_IP = "http://192.168.1.91:86";
const SERVER_IP = "http://a14c-14-245-166-140.ngrok.io";
