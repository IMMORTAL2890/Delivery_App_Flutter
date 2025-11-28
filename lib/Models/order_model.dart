import 'package:food_delivery/Constant/order_list.dart';

class OrderModel {

  OrderList orderList = OrderList();

  final String? orderNo;
  final int status;
  final int color;
  final String? customerName;
  final String? deliveryAddress;
  final String? pickupAddress;
  final double? amount;
  final bool? isPaid;

  OrderModel({
    required this.orderNo,
    required this.status,
    required this.color,
    required this.customerName,
    required this.deliveryAddress,
    required this.pickupAddress,
    required this.amount,
    required this.isPaid,
  });

}