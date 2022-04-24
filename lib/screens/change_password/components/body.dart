import 'package:flutter/material.dart';
import '/screens/change_password/components/change_pass_form.dart';

import '/commons/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(10)),
          // ProfilePic(),
          SizedBox(height: 20),
          ChangePassForm(),
          // UpdateForm(),
        ],
      ),
    );
  }

  // Future<UserUpdate> getCurrentUserUpdate() async {
  //   UserService userService = new UserService();
  //   UserUpdate userUpdate = await userService.GetUserByToken();
  //   return userUpdate;
  // }
}
