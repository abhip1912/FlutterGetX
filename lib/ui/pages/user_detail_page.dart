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
            body: Column(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  child: Image.network(
                    _userController.user.value.avatarUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Followers: ${_userController.user.value.followers}"),
                    Text("Following: ${_userController.user.value.following}"),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Name: ${_userController.user.value.name}"),
                SizedBox(
                  height: 10,
                ),
                Text("Email: ${_userController.user.value.email}"),
              ],
            ),
          )
        : Scaffold());
  }
}
