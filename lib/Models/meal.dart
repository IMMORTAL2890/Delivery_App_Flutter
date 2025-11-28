class PickupCenter {
  String? name;
  final List<PickupOrder>  orders;

 PickupCenter({
    this.name,
    required this.orders,
  });
}

class PickupOrder{
  final int orderNo;
  final String mealType;
  final String time;
  final int status;
  final int color;

  PickupOrder({
    required this.orderNo,
    required this.mealType,
    required this.time,
    required this.status,
    required this.color,
  });
}