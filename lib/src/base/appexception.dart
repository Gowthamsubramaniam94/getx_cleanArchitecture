import 'package:get/get.dart';
import 'package:getx_template/src/constants/constants.dart';

class AppException implements Exception {
  final String title;
  final String message;
  final Response response;

  AppException({required this.title, required this.message,required this.response}){
    handleException();
  }

  handleException(){
    switch(response.statusCode){
      case 401:
        return '401 Unauthorized';
      case 404:
        return '404 Not Found';
      case 403:
        return '403 Some Error Occurred';
      case 406:
        return '404 Some Error Occurred';
      case 500:
        return '500 Internal Server Error';
    }
  }

}