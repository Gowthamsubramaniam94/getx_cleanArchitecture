import 'package:get/get.dart';
import 'package:getx_template/src/base/basecontroller.dart';
import 'package:getx_template/src/base/usecase.dart';
import 'package:getx_template/src/domain/usecase/userdetailsusecase.dart';

class HomeController extends BaseController{
  @override
  void onInit() {
    getApiCall();
    super.onInit();
  }

  getApiCall()async{
    change(null,status: RxStatus.loading());
    await Get.find<UserDetailsUseCase>().execute(NoParams()).then((value){
      change(value,status: RxStatus.success());
    }).catchError((error){
      setRetry(retry: getApiCall);
      change(null,status: RxStatus.error(error.message));
    });
  }
}