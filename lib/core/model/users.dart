// To parse this JSON data, do
//
//     final users = usersFromJson(jsonString);

// import 'dart:convert';

// Users usersFromJson(String str) => Users.fromJson(json.decode(str));

// String usersToJson(Users data) => json.encode(data.toJson());

class Users {
  Users({
    this.login,
    this.id,
    this.avatarUrl,
    this.url,
    this.type,
    this.name,
    this.email,
    this.followers,
    this.following,
  });

  String login;
  int id;
  String avatarUrl;
  String url;
  String type;
  String name;
  dynamic email;
  int followers;
  int following;

  factory Users.fromJson(Map<String, dynamic> json) => Users(
        login: json["login"],
        id: json["id"],
        avatarUrl: json["avatar_url"],
        url: json["url"],
        type: json["type"],
        name: json["name"],
        email: json["email"],
        followers: json["followers"],
        following: json["following"],
      );

  Map<String, dynamic> toJson() => {
        "login": login,
        "id": id,
        "avatar_url": avatarUrl,
        "url": url,
        "type": type,
        "name": name,
        "email": email,
        "followers": followers,
        "following": following,
      };
}
