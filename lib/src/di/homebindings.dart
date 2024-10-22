import 'package:get/get.dart';
import 'package:getx_template/src/data/repositoryimpl/userrepoimpl.dart';
import 'package:getx_template/src/domain/repository/userrepo.dart';
import 'package:getx_template/src/domain/usecase/userdetailsusecase.dart';
import 'package:getx_template/src/presentation/controller/homecontroller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<UserRepo>(() => UserRepoImpl());
    Get.lazyPut(() => UserDetailsUseCase());
    Get.lazyPut(() => HomeController());
  }

}