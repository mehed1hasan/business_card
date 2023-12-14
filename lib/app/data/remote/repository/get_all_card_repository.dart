import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../../../core/global_widget/shared_value.dart';
import '../model/get_all_card_model.dart';



String baseUrl = "http://192.168.145.154:8080";
String getAllCardEndPoint = "/api/card/list_user";


class GetAllCard{

  Future<GetAllCardModel> getAllCard() async{

    if (kDebugMode) {
      print("###################### Before Api Call #############################");
    }
    print("********* Bearer Token : $bToken*********************************");
    final headers = {'Content-Type': 'application/json', "Authorization": "Bearer ${token.$}"};
    final url = Uri.parse(baseUrl + getAllCardEndPoint);
    final response = await http.get(url, headers: headers);
    if (kDebugMode) {
      print("###################### After Api Call #############################");
    }

    return getAllCardModelFromJson(response.body);
  }

}