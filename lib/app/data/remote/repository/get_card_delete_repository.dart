


import '../../../core/global_widget/shared_value.dart';
import '../model/get_card_delete_model.dart';
import 'package:http/http.dart' as http;

String baseUrl = "http://192.168.145.154:8080";
String getCardDeleteEndPoint = "/api/card/delete_card/";
class CardDeleteRepository{


  Future<CardDeleteModel> cardDelete(int id) async{

    final headers = {'Content-Type': 'application/json', "Authorization": "Bearer ${token.$}"};
    final url = Uri.parse(baseUrl + getCardDeleteEndPoint + "${id}?activeStatus=${2}");

    final response = await http.get(url, headers: headers);

    return cardDeleteModelFromJson(response.body);

  }


}