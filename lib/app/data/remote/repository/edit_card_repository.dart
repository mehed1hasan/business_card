import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../core/global_widget/shared_value.dart';

String baseUrl = "http://192.168.145.154:8080";
String editCardEndPoint = "/api/card/update_card/";
class EditCardRepository{

  Future<int> editCard(
      int? editCardId,
      String? cardName,
      String? firstName,
      String? lastName,
      String? prefix,
      String? title,
      String? company,
      String? department,
      String? aboutHeadline,
      int? cardThemeColorId,
      int? cardStyleId,
      String? profileImage,
      ) async{
    final headers = {'Content-Type': 'application/json', "Authorization":"Bearer ${token.$}"};
    final body = jsonEncode(
        {
          "parentCardId": null,
          "cardType": "Card",
          "isScanedCard": false,
          "note" :"Mahedi",
          "general": {
            "cardName": cardName,
            "personal": {
              "prefix": prefix ?? "",
              "nameFirst": firstName,
              "nameMiddle": "",
              "nameLast": lastName,
              "suffix": ""
            },
            "affiliation": {
              "title": title ?? "",
              "department": department ?? "",
              "company": company ?? "",
              "aboutHeadline": aboutHeadline ?? "" ,
            }
          },
          "display": {
            "profileImageData": profileImage ?? "",
            "logoImageData": null,
            "badgeImageData": null,
            "cardStyleId": cardStyleId ?? "",
            "cardThemeColorId": cardThemeColorId ?? "",
          },
          "userCardFields": null
        }
    );

    final url = Uri.parse("$baseUrl$editCardEndPoint$editCardId");

    print("*************** Card Create Repository: ${token.$} *******************");

    /*print("ProfileImge: $profileImage");
    print("Color: $cardThemeColorId");
    print("Theme Style : $cardStyleId");*/

    final response = await http.put(url, body: body, headers: headers);

    print("****************** Card Create Repository: after api call *********************");

    return response.statusCode;
  }

}