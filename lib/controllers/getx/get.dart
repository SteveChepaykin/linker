import 'package:get/get.dart';
import 'package:referal_market/models/order_model.dart';

class AppGetController extends GetxController {
  List<OrderModel> orders = [];

  Future<void> getOrdersMock() async {
    orders = [
      OrderModel.mock("1"),
      OrderModel.mock("2"),
      OrderModel.mock("3"),
      OrderModel.mock("4"),
    ]; 
  }


} 