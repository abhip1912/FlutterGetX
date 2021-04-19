import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_git_users/ui/pages/home_page.dart';
import './ui/utility/router.dart' as router;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      getPages: router.Router.route,
      initialRoute: HomePage.routeName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
