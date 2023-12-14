// To parse this JSON data, do
//
//     final tokenResponseModel = tokenResponseModelFromJson(jsonString);

import 'dart:convert';

TokenResponseModel tokenResponseModelFromJson(String str) => TokenResponseModel.fromJson(json.decode(str));

String tokenResponseModelToJson(TokenResponseModel data) => json.encode(data.toJson());

class TokenResponseModel {
  int? id;
  String? username;
  String? roleName;
  int? roleId;
  String? userType;

  TokenResponseModel({
    this.id,
    this.username,
    this.roleName,
    this.roleId,
    this.userType,
  });

  factory TokenResponseModel.fromJson(Map<String, dynamic> json) => TokenResponseModel(
    id: json["id"],
    username: json["username"],
    roleName: json["roleName"],
    roleId: json["roleId"],
    userType: json["userType"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "username": username,
    "roleName": roleName,
    "roleId": roleId,
    "userType": userType,
  };
}
