import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import '../model/users.dart';

class DBHelper {
  void setData(List<Users> users) async {
    print(
        "myLog: setData of db_helper is called and received userList is : $users");
    await Firebase.initializeApp();
    users.forEach((user) {
      FirebaseFirestore.instance
          .collection('users')
          .doc(user.id.toString())
          .set(user.toJson());
    });
  }
}
