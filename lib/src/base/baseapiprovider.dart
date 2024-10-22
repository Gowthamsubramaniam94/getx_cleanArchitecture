import 'dart:convert';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';

abstract class BaseApiProvider extends GetConnect{
  @override
  void onInit() {
    initialize();
    super.onInit();
  }
  void initialize() async{
    httpClient.baseUrl='http://52.38.106.96:6007/';
    httpClient.timeout=Duration(minutes: 1);
    httpClient.addRequestModifier((Request request) {
      request.headers['Authorization']='Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJzYXJvIiwianRpIjoiMzc5NSIsImlhdCI6IjIwMjEtMDgtMjQgMTE6MzM6NTkiLCJuYmYiOjE2Mjk4MDQ4MzksImV4cCI6MTYzMTEwMDgzOSwiaXNzIjoiaHR0cDovL3d3dy5jLXNoYXJwY29ybmVyLmNvbS9tZW1iZXJzL2NhdGNoZXItd29uZyIsImF1ZCI6IkNhdGNoZXIgV29uZyJ9.g7pZ1hr-IjejFzanQFvh93yCaXMD5MDCGGGWhSQwpCY';
      print('${request.url}');
      print('${request.headers}');
      return request;
    });

    httpClient.addResponseModifier((request, response) {
      print('${request.method.toUpperCase()} ${request.url}');
      print('${response.hasError}');
      print('${response.statusCode}');
      print('${response.bodyString}');
     return response;
    });

  }

}