import 'dart:convert';

List<UserDataModel> userDataModelFromJson(String str) =>
    List<UserDataModel>.from(
        json.decode(str).map((x) => UserDataModel.fromJson(x)));

String userDataModelToJson(List<UserDataModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserDataModel {
  String firstName;
  String email;

  UserDataModel({required this.firstName, required this.email});

  factory UserDataModel.fromJson(Map<String, dynamic> json) {
    return UserDataModel(
      firstName: json["fName"],
      email: json["email"],
    );
  }

  Map<String, dynamic> toJson() => {
        "fName": firstName,
        "email": email,
      };
}
