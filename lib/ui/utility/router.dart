import 'package:get/get.dart';
import 'package:getx_git_users/ui/pages/home_page.dart';
import 'package:getx_git_users/ui/pages/user_detail_page.dart';

class Router {
  static final route = [
    GetPage(
      name: UserDetailPage.routeName,
      page: () => UserDetailPage(),
    ),
    GetPage(
      name: HomePage.routeName,
      page: () => HomePage(),
    ),
  ];
}
