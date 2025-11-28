import 'package:get/get.dart';

class OrderController extends GetxController{
  RxInt selectedValue = 6.obs;

  void changeValue(int value){
    selectedValue.value = value;
  }
}