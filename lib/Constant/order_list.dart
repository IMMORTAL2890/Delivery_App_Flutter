import 'package:food_delivery/Models/order_model.dart';

class OrderList {
  final List<OrderModel> orderList = [
  OrderModel(
    orderNo: "ORD001",
    status: 1,
    color: 0,
    customerName: "Shubham",
    deliveryAddress: "Pune",
    pickupAddress: "Mumbai",
    amount: 250.0,
    isPaid: true,
  ),
  OrderModel(
    orderNo: "ORD002",
    status: 2,
    color: 1,
    customerName: "Rohit",
    deliveryAddress: "Nashik",
    pickupAddress: "Pune",
    amount: 480.0,
    isPaid: false,
  ),
];
}