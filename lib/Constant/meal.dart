
import 'package:food_delivery/Models/meal.dart';

 List<PickupCenter> pickupCenters = [
  PickupCenter(
    name: "Pickup Center-1",
    orders: [
      PickupOrder(
        orderNo: 1109,
        mealType: "Breakfast",
        time: "09:30 PM",
        status: 1,
        color:0
      ),
      PickupOrder(
        orderNo: 1110,
        mealType: "Lunch",
        time: "12:30 PM",
        status: 1,
        color:0
      ),
      PickupOrder(
        orderNo: 1120,
        mealType: "Dinner",
        time: "07:30 PM",
        status: 1,
        color:0
      ),
    ],
  ),

  PickupCenter(
    name: "Pickup Center-2",
    orders: [
      PickupOrder(
        orderNo: 1125,
        mealType: "Breakfast",
        time: "08:00 AM",
        status: 1,
        color:0
      ),
      PickupOrder(
        orderNo: 1126,
        mealType: "Lunch",
        time: "01:00 PM",
        status: 1,
        color:0
      ),
    ],
  ),

  PickupCenter(
    name: "Pickup Center-3",
    orders: [
      PickupOrder(
        orderNo: 1140,
        mealType: "Dinner",
        time: "08:30 PM",
        status: 1,
        color:0
      ),
    ],
  ),

  PickupCenter(
    name: "Pickup Center-4",
    orders: [
      PickupOrder(
        orderNo: 1152,
        mealType: "Breakfast",
        time: "09:00 AM",
        status: 1,
        color:0
      ),
      PickupOrder(
        orderNo: 1160,
        mealType: "Dinner",
        time: "07:00 PM",
       status: 1,
        color:0
      ),
    ],
  ),

  PickupCenter(
    name: "Pickup Center-5",
    orders: [
      PickupOrder(
        orderNo: 1180,
        mealType: "Lunch",
        time: "01:45 PM",
        status: 1,
        color:0
      ),
      PickupOrder(
        orderNo: 1185,
        mealType: "Dinner",
        time: "08:00 PM",
        status: 1,
        color:0
      ),
    ],
  ),
];
