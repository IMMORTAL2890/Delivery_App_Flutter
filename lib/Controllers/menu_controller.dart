
import 'package:food_delivery/Models/menu_model.dart';
import 'package:food_delivery/helpers/api_helper.dart';
import 'package:get/get.dart';

class MenuDetailsController extends GetxController {
  RxBool isLoading = false.obs;
  Rx<MenuModel?> menu = Rx<MenuModel?>(null);
  RxBool isStore = false.obs;
  

  ApiHelper helper = ApiHelper();
  
  @override
  void onInit() {
    super.onInit();
    fetchMenu();
  }

  Future<void> fetchMenu() async {
    isLoading.value = true;

    try {
      final data = await helper.getMenu();
      menu.value = data;
    } catch (e) {
     // print("Controller Error: $e");
    }

    isLoading.value = false;
  }


  void toggleStore(bool value) {
    isStore.value = value;
  }

 
}