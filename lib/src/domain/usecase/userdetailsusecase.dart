import 'package:get/get.dart';
import 'package:getx_template/src/base/usecase.dart';
import 'package:getx_template/src/domain/entity/user_contact_dto.dart';
import 'package:getx_template/src/domain/repository/userrepo.dart';

class UserDetailsUseCase extends BaseUseCase<UserContactDto,NoParams>{
  @override
  Future<UserContactDto> execute(NoParams parameter) async{
    return await Get.find<UserRepo>().getUserDetails();
  }

}