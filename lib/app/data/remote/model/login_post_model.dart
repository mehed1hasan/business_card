// To parse this JSON data, do
//
//     final loginPostModel = loginPostModelFromJson(jsonString);

import 'dart:convert';

LoginPostModel loginPostModelFromJson(String str) => LoginPostModel.fromJson(json.decode(str));

String loginPostModelToJson(LoginPostModel data) => json.encode(data.toJson());

class LoginPostModel {
  String? username;
  String? password;

  LoginPostModel({
    this.username,
    this.password,
  });

  factory LoginPostModel.fromJson(Map<String, dynamic> json) => LoginPostModel(
    username: json["username"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "username": username,
    "password": password,
  };
}
