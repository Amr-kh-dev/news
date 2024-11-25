import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/api/api_constaens.dart';
import 'package:news/models/suroces_respons/suroces_respons.dart';

class ApiServies {
  static Future<SurocesRespons> getSources(String categoryId) async {
    final uri = Uri.https(ApiConstaens.baseURL, ApiConstaens.sourcEndPoint,
        {'apiKey': ApiConstaens.apiKey, 'category': categoryId});
    final response = await http.get(uri);
    final json = jsonDecode(response.body);
    return SurocesRespons.fromJson(json);
  }
}
