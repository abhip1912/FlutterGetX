import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_git_users/core/controllers/users_controller.dart';
import 'package:getx_git_users/ui/pages/user_detail_page.dart';

class HomePage extends StatelessWidget {
  static final routeName = '/home-page';
  final UsersController _usersController = Get.put(UsersController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Firebase.initializeApp();
          FirebaseFirestore.instance
              .collection('users')
              .snapshots()
              .listen((data) {
            data.docs.forEach((element) {
              print(element['login']);
            });
          });
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("Git Users"),
        centerTitle: true,
      ),
      body: Container(
        child: Obx(
          () => ListView.builder(
            itemCount: _usersController.usersList.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                onTap: () {
                  Get.toNamed(UserDetailPage.routeName);
                },
                leading: CircleAvatar(
                  radius: 35,
                  backgroundImage:
                      NetworkImage(_usersController.usersList[index].avatarUrl),
                ),
                title: Text(_usersController.usersList[index].login),
                subtitle: Text(
                    "${_usersController.usersList[index].id} - ${_usersController.usersList[index].type}"),
              );
            },
          ),
        ),
      ),
    );
  }
}
