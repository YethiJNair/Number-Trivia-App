import 'dart:convert';
import 'package:http/http.dart';
import 'package:web/number_fact_response/number_fact_response.dart';

Future<NumberFactResponse> getNumberFact({required String number}) async {
  final response = await get(Uri.parse("http://numbersapi.com/$number?json"));
  // final _bodyAsJson = jsonEncode(response.body);
  final bodyAsJson = jsonDecode(response.body) as Map<String, dynamic>;
  final data = NumberFactResponse.fromJson(bodyAsJson);
  return data;
}
