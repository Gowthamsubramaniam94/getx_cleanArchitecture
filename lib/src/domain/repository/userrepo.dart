import 'package:getx_template/src/domain/entity/user_contact_dto.dart';

abstract class UserRepo{
  Future<UserContactDto> getUserDetails();
}