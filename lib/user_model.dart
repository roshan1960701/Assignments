// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    this.status,
    this.data,
    this.message,
  });

  String status;
  Data data;
  String message;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        status: json["status"],
        data: Data.fromJson(json["data"]),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": data.toJson(),
        "message": message,
      };
}

class Data {
  Data({
    this.name,
    this.salary,
    this.age,
    this.id,
  });

  String name;
  String salary;
  String age;
  int id;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        name: json["name"],
        salary: json["salary"],
        age: json["age"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "salary": salary,
        "age": age,
        "id": id,
      };
}
