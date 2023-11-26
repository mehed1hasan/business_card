// To parse this JSON data, do
//
//     final createAccountResponseModel = createAccountResponseModelFromJson(jsonString);

import 'dart:convert';

CreateAccountResponseModel createAccountResponseModelFromJson(String str) => CreateAccountResponseModel.fromJson(json.decode(str));

String createAccountResponseModelToJson(CreateAccountResponseModel data) => json.encode(data.toJson());

class CreateAccountResponseModel {
  int? statusCode;
  String? status;
  String? message;
  dynamic data;

  CreateAccountResponseModel({
    this.statusCode,
    this.status,
    this.message,
    this.data,
  });

  factory CreateAccountResponseModel.fromJson(Map<String, dynamic> json) => CreateAccountResponseModel(
    statusCode: json["statusCode"],
    status: json["status"],
    message: json["message"],
    data: json["data"],
  );

  Map<String, dynamic> toJson() => {
    "statusCode": statusCode,
    "status": status,
    "message": message,
    "data": data,
  };
}


class CreateAccountPostModel {
  String? name;
  String? username;
  String? androidToken;
  String? password;
  int? socialLoginId;

  CreateAccountPostModel({
    this.name,
    this.username,
    this.androidToken,
    this.password,
    this.socialLoginId,
  });

  factory CreateAccountPostModel.fromJson(Map<String, dynamic> json) => CreateAccountPostModel(
    name: json["name"],
    username: json["username"],
    androidToken: json["androidToken"],
    password: json["password"],
    socialLoginId: json["socialLoginId"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "username": username,
    "androidToken": androidToken,
    "password": password,
    "socialLoginId": socialLoginId,
  };
}