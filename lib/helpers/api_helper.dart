import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:food_delivery/Models/menu_model.dart';

class ApiHelper {
  final dio = Dio(
    BaseOptions(
      responseType: ResponseType.plain, // IMPORTANT FIX
    ),
  );
  final innerJson = json.encode({
    "postData":
        "eyJ0SWQiOiIwODhiYjdkNC0yZTU1LTQ3ZDQtYjJhMS03MGEzOTMxYTg3MmQiLCJkYXRhIjp7Im1lbnVJZCI6MTgxMiwibG9jYXRpb25JZCI6MTAxMzIsIm1vYlVybCI6ImNvdXJ0bmV5YnVyZ2Vya2luZyJ9fQ==",
    "dt": 1763442171074,
  });
  Future<MenuModel> getMenu() async {
    var data = FormData.fromMap({"postData": innerJson});

    final response = await dio.post(
      "https://myexchangefood.imenu360.com/proxy/GetMenuDetail.imsvc",
      data: data,
      options: Options(
        contentType: "multipart/form-data",
        headers: {"Accept": "*/*"},
      ),
    );

    // print("RAW TYPE: ${response.data.runtimeType}");
    // print("RAW DATA: ${response.data}");

    // Now response.data is a clean Base64 string
    final rawJson = json.decode(response.data);
    final base64String = rawJson['data'];
    final decodedBytes = base64.decode(base64String);
    final decodedText = utf8.decode(decodedBytes);

    //print("DECODED TEXT: $decodedText");

    final jsonMap = json.decode(decodedText);

    return MenuModel.fromJson(jsonMap);
  }
}
