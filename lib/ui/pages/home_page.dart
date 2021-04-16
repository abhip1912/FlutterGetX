import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_git_users/core/controllers/users_controller.dart';

class HomePage extends StatelessWidget {
  final UsersController _usersController = Get.put(UsersController());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        child: Text("Fetch the data"),
        onPressed: () {
          print("myLog: Button pressed");
        },
      ),
    );
  }
}
