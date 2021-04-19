import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_git_users/core/model/users.dart';
import '../web/request.dart';

class UserController extends GetxController {
  @override
  void onInit() {
    _apiGetUserData();
    super.onInit();
  }

  var loginName;
  UserController(this.loginName);

  var user = Users().obs;

  void _apiGetUserData() async {
    Future.delayed(
      Duration.zero,
      () => Get.dialog(
        Center(child: CircularProgressIndicator()),
        barrierDismissible: false,
      ),
    );
    Request(url: "/$loginName").get().then((value) {
      var obj = Users.fromJson(json.decode(value.body));
      user.value = obj;
      Get.back();
    }).catchError((error) {
      print(error);
    });
  }
}
