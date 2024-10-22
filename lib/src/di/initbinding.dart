import 'package:get/get.dart';
import 'package:getx_template/src/data/network/restapiclient.dart';

class InitBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ApiProvider(),fenix: true);

  }

}