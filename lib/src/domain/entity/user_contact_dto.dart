class UserContactDto {
  int? userID;
  String? email;
  int? mobileNumber;

  UserContactDto(
    this.userID,
    this.email,
    this.mobileNumber,
  );

  UserContactDto.fromJson(dynamic json) {
    userID = json['userID'];
    email = json['email'];
    mobileNumber = json['mobileNumber'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['userID'] = userID;
    map['email'] = email;
    map['mobileNumber'] = mobileNumber;
    return map;
  }
}
