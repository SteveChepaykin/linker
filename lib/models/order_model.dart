import 'package:referal_market/models/user_model.dart';

class OrderModel {
  late final String id;
  late final String name;
  late final String description;
  late final int price;
  late final UserModel sender;

  OrderModel(this.id, Map<String, dynamic> map) {
    name = map["name"] != null ? map["name"] as String : throw("NO NAME ERROR IN ORDER MODEL");
    description = map["desc"] != null ? map["desc"] as String : "";
    price = map["price"] != null ? map["price"] as int : throw("NO PRICE ERROR IN ORDER MODEL");
    sender = map["sender"] != null ? map["sender"] as UserModel : throw("NO SENDER ERROR IN ORDER MODEL");
  }

  OrderModel.mock(this.id) {
    name = "test name $id";
    description = "test name $id";
    price = 100;
    sender = UserModel.mock(id);
  }
}