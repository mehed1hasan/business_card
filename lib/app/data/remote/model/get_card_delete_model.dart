// To parse this JSON data, do
//
//     final cardDeleteModel = cardDeleteModelFromJson(jsonString);

import 'dart:convert';

CardDeleteModel cardDeleteModelFromJson(String str) => CardDeleteModel.fromJson(json.decode(str));

String cardDeleteModelToJson(CardDeleteModel data) => json.encode(data.toJson());

class CardDeleteModel {
  int? statusCode;
  String? status;
  String? message;
  dynamic data;

  CardDeleteModel({
    this.statusCode,
    this.status,
    this.message,
    this.data,
  });

  factory CardDeleteModel.fromJson(Map<String, dynamic> json) => CardDeleteModel(
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
