import 'package:flutter/material.dart';

class UserDetailPage extends StatelessWidget {
  static final routeName = '/user-detail-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UserDetailPage"),
        centerTitle: true,
      ),
      body: Container(
        child: Text("Hi there"),
      ),
    );
  }
}
