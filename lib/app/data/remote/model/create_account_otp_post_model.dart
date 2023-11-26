// To parse this JSON data, do
//
//     final createAccountOtpPostModel = createAccountOtpPostModelFromJson(jsonString);

import 'dart:convert';

CreateAccountOtpPostModel createAccountOtpPostModelFromJson(String str) => CreateAccountOtpPostModel.fromJson(json.decode(str));

String createAccountOtpPostModelToJson(CreateAccountOtpPostModel data) => json.encode(data.toJson());

class CreateAccountOtpPostModel {
  String? name;
  String? username;
  String? email;
  String? otp;
  String? password;
  String? socialLoginId;

  CreateAccountOtpPostModel({
    this.name,
    this.username,
    this.email,
    this.otp,
    this.password,
    this.socialLoginId,
  });

  factory CreateAccountOtpPostModel.fromJson(Map<String, dynamic> json) => CreateAccountOtpPostModel(
    name: json["name"],
    username: json["username"],
    email: json["email"],
    otp: json["otp"],
    password: json["password"],
    socialLoginId: json["socialLoginId"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "username": username,
    "email": email,
    "otp": otp,
    "password": password,
    "socialLoginId": socialLoginId,
  };
}
