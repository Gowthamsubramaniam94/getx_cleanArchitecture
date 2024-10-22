import 'package:get/get.dart';
import 'package:getx_template/src/base/appexception.dart';
import 'package:getx_template/src/data/network/restapiclient.dart';
import 'package:getx_template/src/domain/entity/user_contact_dto.dart';
import 'package:getx_template/src/domain/repository/userrepo.dart';

class UserRepoImpl extends UserRepo{
  @override
  Future<UserContactDto> getUserDetails() async{
   final res= await Get.find<ApiProvider>().getUser();
   if(res.status.hasError){
     throw AppException(title: 'error',message:res.statusText??'',response:res);
   }else
   return UserContactDto.fromJson(res.body);
  }

}