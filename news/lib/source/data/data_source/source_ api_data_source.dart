import 'dart:convert';
import 'package:news/api/api_constaens.dart';
import 'package:news/source/data/data_source/source_data_source.dart';
import 'package:news/source/data/model/source.dart';
import 'package:news/source/data/model/suroces_respons.dart';
import 'package:http/http.dart' as http;

class SourceAPIDataSource extends SourceDataSource {
  @override
  Future<List<Source>> getSources(String categoryId) async {
    final uri = Uri.https(ApiConstaens.baseURL, ApiConstaens.sourcEndPoint,
        {'apiKey': ApiConstaens.apiKey, 'category': categoryId});
    final response = await http.get(uri);
    final json = jsonDecode(response.body);
    final sourceReopens = SurocesRespons.fromJson(json);

    if (sourceReopens.status == 'ok' && sourceReopens.sources != null) {
      return sourceReopens.sources!;
    } else {
      throw Exception('Failed to get sources');
    }
  }
}
