import '../../../core/global_widget/shared_value.dart';
import '../model/get_card_initial_data_model.dart';
import 'package:http/http.dart' as http;


String baseUrl = "http://192.168.145.154:8080";
String getCardInitialDataEndPoint = "/api/card/get_card_initial_data";

class GetCardInitialDataRepository{
  Future<GetCardInitialDataModel> getCardInitialData() async{

    final headers = {'Content-Type': 'application/json', "Authorization": 'Bearer ${token.$}',};
    final url = Uri.parse(baseUrl + getCardInitialDataEndPoint);
    final response = await http.get(url, headers: headers);


    return getCardInitialDataModelFromJson(response.body);

  }

}