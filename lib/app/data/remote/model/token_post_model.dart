// To parse this JSON data, do
//
//     final tokenPostModel = tokenPostModelFromJson(jsonString);

import 'dart:convert';

TokenPostModel tokenPostModelFromJson(String str) => TokenPostModel.fromJson(json.decode(str));

String tokenPostModelToJson(TokenPostModel data) => json.encode(data.toJson());

class TokenPostModel {
  String? token;

  TokenPostModel({
    this.token,
  });

  factory TokenPostModel.fromJson(Map<String, dynamic> json) => TokenPostModel(
    token: json["token"],
  );

  Map<String, dynamic> toJson() => {
    "token": token,
  };
}
