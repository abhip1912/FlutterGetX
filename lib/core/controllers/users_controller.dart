import 'package:get/get.dart';
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
    Request().get().then((value) {
      print(value);
    }).catchError((onError) {
      print(onError);
    });
  }
}
