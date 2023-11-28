// To parse this JSON data, do
//
//     final createAccountOtpResponseModel = createAccountOtpResponseModelFromJson(jsonString);

import 'dart:convert';

CreateAccountOtpResponseModel createAccountOtpResponseModelFromJson(String str) => CreateAccountOtpResponseModel.fromJson(json.decode(str));

String createAccountOtpResponseModelToJson(CreateAccountOtpResponseModel data) => json.encode(data.toJson());

class CreateAccountOtpResponseModel {
  int? statusCode;
  String? status;
  String? message;
  Data? data;

  CreateAccountOtpResponseModel({
    this.statusCode,
    this.status,
    this.message,
    this.data,
  });

  factory CreateAccountOtpResponseModel.fromJson(Map<String, dynamic> json) => CreateAccountOtpResponseModel(
    statusCode: json["statusCode"],
    status: json["status"],
    message: json["message"],
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "statusCode": statusCode,
    "status": status,
    "message": message,
    "data": data?.toJson(),
  };
}

class Data {
  String? apiToken;
  User? user;

  Data({
    this.apiToken,
    this.user,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    apiToken: json["apiToken"],
    user: json["user"] == null ? null : User.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "apiToken": apiToken,
    "user": user?.toJson(),
  };
}

class User {
  String? name;
  String? userName;
  dynamic imageUrl;

  User({
    this.name,
    this.userName,
    this.imageUrl,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    name: json["name"],
    userName: json["userName"],
    imageUrl: json["imageUrl"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "userName": userName,
    "imageUrl": imageUrl,
  };
}
