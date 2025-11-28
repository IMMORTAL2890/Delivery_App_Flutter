import 'package:get/get.dart';

class SignUpController extends GetxController {
  RxBool isSignup = false.obs;

  void toggleSignup() {
    isSignup.value = !isSignup.value;
  }
}