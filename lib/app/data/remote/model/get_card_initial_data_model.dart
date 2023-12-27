// To parse this JSON data, do
//
//     final getCardInitialDataModel = getCardInitialDataModelFromJson(jsonString);

import 'dart:convert';

GetCardInitialDataModel getCardInitialDataModelFromJson(String str) => GetCardInitialDataModel.fromJson(json.decode(str));

String getCardInitialDataModelToJson(GetCardInitialDataModel data) => json.encode(data.toJson());

class GetCardInitialDataModel {
  int? statusCode;
  dynamic status;
  String? message;
  Data? data;

  GetCardInitialDataModel({
    this.statusCode,
    this.status,
    this.message,
    this.data,
  });

  factory GetCardInitialDataModel.fromJson(Map<String, dynamic> json) => GetCardInitialDataModel(
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
  List<CardStyle>? cardStyles;
  List<CardThemeColor>? cardThemeColors;
  List<CardFieldType>? cardFieldTypes;

  Data({
    this.cardStyles,
    this.cardThemeColors,
    this.cardFieldTypes,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    cardStyles: json["cardStyles"] == null ? [] : List<CardStyle>.from(json["cardStyles"]!.map((x) => CardStyle.fromJson(x))),
    cardThemeColors: json["cardThemeColors"] == null ? [] : List<CardThemeColor>.from(json["cardThemeColors"]!.map((x) => CardThemeColor.fromJson(x))),
    cardFieldTypes: json["cardFieldTypes"] == null ? [] : List<CardFieldType>.from(json["cardFieldTypes"]!.map((x) => CardFieldType.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "cardStyles": cardStyles == null ? [] : List<dynamic>.from(cardStyles!.map((x) => x.toJson())),
    "cardThemeColors": cardThemeColors == null ? [] : List<dynamic>.from(cardThemeColors!.map((x) => x.toJson())),
    "cardFieldTypes": cardFieldTypes == null ? [] : List<dynamic>.from(cardFieldTypes!.map((x) => x.toJson())),
  };
}

class CardFieldType {
  String? cardFieldTypeName;
  List<FieldList>? fieldList;

  CardFieldType({
    this.cardFieldTypeName,
    this.fieldList,
  });

  factory CardFieldType.fromJson(Map<String, dynamic> json) => CardFieldType(
    cardFieldTypeName: json["cardFieldTypeName"],
    fieldList: json["fieldList"] == null ? [] : List<FieldList>.from(json["fieldList"]!.map((x) => FieldList.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "cardFieldTypeName": cardFieldTypeName,
    "fieldList": fieldList == null ? [] : List<dynamic>.from(fieldList!.map((x) => x.toJson())),
  };
}

class FieldList {
  int? id;
  String? name;
  String? description;
  String? iconUrl;
  int? serial;
  int? cardFieldTypeId;
  dynamic cardFieldTypeName;
  String? input1Text;
  String? input1Hint;
  String? input2Text;
  String? input2Hint;
  String? input1Type;
  String? input2Type;
  String? createdAt;
  int? activeStatusId;

  FieldList({
    this.id,
    this.name,
    this.description,
    this.iconUrl,
    this.serial,
    this.cardFieldTypeId,
    this.cardFieldTypeName,
    this.input1Text,
    this.input1Hint,
    this.input2Text,
    this.input2Hint,
    this.input1Type,
    this.input2Type,
    this.createdAt,
    this.activeStatusId,
  });

  factory FieldList.fromJson(Map<String, dynamic> json) => FieldList(
    id: json["id"],
    name: json["name"],
    description: json["description"],
    iconUrl: json["iconUrl"],
    serial: json["serial"],
    cardFieldTypeId: json["cardFieldTypeId"],
    cardFieldTypeName: json["cardFieldTypeName"],
    input1Text: json["input1Text"],
    input1Hint: json["input1Hint"],
    input2Text: json["input2Text"],
    input2Hint: json["input2Hint"],
    input1Type: json["input1Type"],
    input2Type: json["input2Type"],
    createdAt: json["createdAt"],
    activeStatusId: json["activeStatusId"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description": description,
    "iconUrl": iconUrl,
    "serial": serial,
    "cardFieldTypeId": cardFieldTypeId,
    "cardFieldTypeName": cardFieldTypeName,
    "input1Text": input1Text,
    "input1Hint": input1Hint,
    "input2Text": input2Text,
    "input2Hint": input2Hint,
    "input1Type": input1Type,
    "input2Type": input2Type,
    "createdAt": createdAt,
    "activeStatusId": activeStatusId,
  };
}

class CardStyle {
  int? id;
  bool? isFree;
  String? name;
  String? imageUrl;

  CardStyle({
    this.id,
    this.isFree,
    this.name,
    this.imageUrl,
  });

  factory CardStyle.fromJson(Map<String, dynamic> json) => CardStyle(
    id: json["id"],
    isFree: json["isFree"],
    name: json["name"],
    imageUrl: json["imageUrl"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "isFree": isFree,
    "name": name,
    "imageUrl": imageUrl,
  };
}

class CardThemeColor {
  int? id;
  String? primaryColorCode;
  String? primaryAccentCode;
  String? secondaryColorCode;
  String? secondaryAccentCode;

  CardThemeColor({
    this.id,
    this.primaryColorCode,
    this.primaryAccentCode,
    this.secondaryColorCode,
    this.secondaryAccentCode,
  });

  factory CardThemeColor.fromJson(Map<String, dynamic> json) => CardThemeColor(
    id: json["id"],
    primaryColorCode: json["primaryColorCode"],
    primaryAccentCode: json["primaryAccentCode"],
    secondaryColorCode: json["secondaryColorCode"],
    secondaryAccentCode: json["secondaryAccentCode"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "primaryColorCode": primaryColorCode,
    "primaryAccentCode": primaryAccentCode,
    "secondaryColorCode": secondaryColorCode,
    "secondaryAccentCode": secondaryAccentCode,
  };
}
