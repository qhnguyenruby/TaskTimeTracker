import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '/components/default_button.dart';
import '/components/form_error.dart';
import '../../../constants/constants.dart';
import '/commons/size_config.dart';

class ChangePassForm extends StatefulWidget {
  const ChangePassForm({
    Key? key,
  }) : super(key: key);
  @override
  _UpdateFormState createState() => _UpdateFormState();
}

class _UpdateFormState extends State<ChangePassForm> {
  final _formKey = GlobalKey<FormState>();
  bool remember = false;
  final List<String?> errors = [];
  String? currentPass;
  String? newPass;
  String? comfirmNewPass;

  bool _isObscureCurrentPassword = true;
  bool _isObscureNewPassword = true;
  bool _isObscureComfirmPassword = true;
  final TextEditingController _currentPassController = TextEditingController();
  final TextEditingController _newPassController = TextEditingController();
  final TextEditingController _confirmNewPassController =
      TextEditingController();

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            buildCurrentPasswordFormField(),
            SizedBox(height: getProportionateScreenHeight(12)),
            buildNewPasswordFormField(),
            SizedBox(height: getProportionateScreenHeight(12)),
            buildConfirmPassFormField(),
            FormError(errors: errors),
            SizedBox(height: getProportionateScreenHeight(20)),
            DefaultButton(
              text: "Thay đổi mật khẩu",
              press: () {
              },
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildConfirmPassFormField() {
    return TextFormField(
      controller: _confirmNewPassController,
      obscureText: _isObscureComfirmPassword,
      onSaved: (newValue) => comfirmNewPass = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kConfirmPassNullError);
        }
        if (value.isNotEmpty && (newPass == value)) {
          removeError(error: kMatchPassError);
        }
        comfirmNewPass = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kConfirmPassNullError);
          return "";
        } else if ((newPass != value)) {
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Xác nhập mật khẩu",
        hintText: "Nhập lại mật khẩu",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: IconButton(
            padding: EdgeInsets.fromLTRB(
              0,
              getProportionateScreenWidth(20),
              getProportionateScreenWidth(20),
              getProportionateScreenWidth(20),
            ),
            icon: SvgPicture.asset(
              _isObscureComfirmPassword
                  ? "assets/icons/visible.svg"
                  : "assets/icons/invisible.svg",
              height: getProportionateScreenWidth(18),
            ),
            onPressed: () {
              setState(() {
                _isObscureComfirmPassword = !_isObscureComfirmPassword;
              });
            }),
      ),
    );
  }

  TextFormField buildNewPasswordFormField() {
    return TextFormField(
      controller: _newPassController,
      obscureText: _isObscureNewPassword,
      onSaved: (newValue) => newPass = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        }
        if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        newPass = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Mật khẩu mới",
        hintText: "Nhập mật khẩu mới",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: IconButton(
            padding: EdgeInsets.fromLTRB(
              0,
              getProportionateScreenWidth(20),
              getProportionateScreenWidth(20),
              getProportionateScreenWidth(20),
            ),
            icon: SvgPicture.asset(
              _isObscureNewPassword
                  ? "assets/icons/visible.svg"
                  : "assets/icons/invisible.svg",
              height: getProportionateScreenWidth(18),
            ),
            onPressed: () {
              setState(() {
                _isObscureNewPassword = !_isObscureNewPassword;
              });
            }),
      ),
    );
  }

  TextFormField buildCurrentPasswordFormField() {
    return TextFormField(
      controller: _currentPassController,
      obscureText: _isObscureCurrentPassword,
      onSaved: (newValue) => currentPass = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        }
        if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        currentPass = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Mật khẩu cũ",
        hintText: "Nhập mật khẩu cũ",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: IconButton(
            padding: EdgeInsets.fromLTRB(
              0,
              getProportionateScreenWidth(20),
              getProportionateScreenWidth(20),
              getProportionateScreenWidth(20),
            ),
            icon: SvgPicture.asset(
              _isObscureCurrentPassword
                  ? "assets/icons/visible.svg"
                  : "assets/icons/invisible.svg",
              height: getProportionateScreenWidth(18),
            ),
            onPressed: () {
              setState(() {
                _isObscureCurrentPassword = !_isObscureCurrentPassword;
              });
            }),
      ),
    );
  }
}
