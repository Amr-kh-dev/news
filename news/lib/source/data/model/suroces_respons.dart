import 'source.dart';

class SurocesRespons {
  String? status;
  List<Source>? sources;

  SurocesRespons({this.status, this.sources});

  @override
  String toString() => 'SurocesRespons(status: $status, sources: $sources)';

  factory SurocesRespons.fromJson(Map<String, dynamic> json) {
    return SurocesRespons(
      status: json['status'] as String?,
      sources: (json['sources'] as List<dynamic>?)
          ?.map((e) => Source.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

 
}
