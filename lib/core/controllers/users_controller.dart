import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_git_users/core/db/db_helper.dart';
import 'package:getx_git_users/core/model/users.dart';
import 'package:getx_git_users/core/web/request.dart';

class UsersController extends GetxController {
  var usersList = <Users>[].obs;
  @override
  void onInit() {
    _apiGetusersList();
    super.onInit();
  }

  void _apiGetusersList() async {
    Future.delayed(
      Duration.zero,
      () => Get.dialog(
        Center(child: CircularProgressIndicator()),
        barrierDismissible: false,
      ),
    );
    print("myLog: Fetching the data...");
    Request().get().then((value) {
      print("myLog: Data Fetched!");
      List<Users> myUsersList = [];
      List resp = json.decode(value.body);
      resp.forEach((element) {
        myUsersList.add(Users.fromJson(element));
      });
      usersList.addAll(myUsersList);
      DBHelper().setData(myUsersList);
      Get.back();
    }).catchError((onError) {
      print(onError);
    });
  }
}
