import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:referal_market/controllers/getx/get.dart';
import 'package:referal_market/models/order_model.dart';

class OrdersListScreen extends StatefulWidget {
  static const path = "orderslist";
  const OrdersListScreen({super.key});

  @override
  State<OrdersListScreen> createState() => _OrdersListScreenState();
}

class _OrdersListScreenState extends State<OrdersListScreen> {
  AppGetController controller = Get.find<AppGetController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // body: GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: ), itemBuilder: itemBuilder),
      body: FutureBuilder<void>(
        future: controller.getOrdersMock(),
        builder: (context, snapshot) {
          return GridView.count(
            crossAxisCount: 3,
            children: [
              ...controller.orders.map(
                (el) => orderWidget(el),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget orderWidget(OrderModel om) => Expanded(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.green,
          ),
        ),
      );
}
