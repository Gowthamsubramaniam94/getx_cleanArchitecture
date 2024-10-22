import 'package:get/get.dart';
import 'package:getx_template/src/base/baseapiprovider.dart';

class ApiProvider extends BaseApiProvider {
  Future<Response> getUser() async {
    return await get('api/Service/Empanelment/GetUserContactDetailsByUserID',
        query: {'UserID': '3795'});
  }
}
