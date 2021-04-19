import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_git_users/core/controllers/user_controller.dart';

class UserDetailPage extends StatelessWidget {
  static final routeName = '/user-detail-page';
  final UserController _userController = Get.put(UserController(Get.arguments));
  @override
  Widget build(BuildContext context) {
    return Obx(() => _userController.user.value.id != null
        ? Scaffold(
            appBar: AppBar(
              title: Text("${_userController.user.value.login}"),
            ),
            body: Center(
              child: Text("Followers: ${_userController.user.value.followers}"),
            ),
          )
        : Scaffold());
  }
}
