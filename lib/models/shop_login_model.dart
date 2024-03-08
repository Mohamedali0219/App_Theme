import 'package:shop_app/models/user_data_model.dart';

class ShopLoginModel {
  bool? status;
  String? message;
  UserDataModel? data;

  ShopLoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? UserDataModel.fromJson(json['data']) : null;
  }
}
