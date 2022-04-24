import 'package:flutter/material.dart';
import '/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // appBar: AppBar(
      //   title: Text("Home"),
      //   backgroundColor: Colors.blue.shade200,
      // ),
      body: Body(),
    );
  }
}
