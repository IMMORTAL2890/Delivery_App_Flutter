import 'package:flutter/material.dart';
import 'package:food_delivery/Constant/app_theme.dart';
import 'package:food_delivery/Controllers/sign_up_controller.dart';
import 'package:food_delivery/pages/orders.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  //final AppTheme theme = AppTheme();
  final SignUpController signUpController = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue.shade100, Colors.white],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const SizedBox(height: 70),
            const Text(
              'Please contact restaurant manager to get your login credentials',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Get great experience with tracky',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20),
            // Padding(
            //   padding: const EdgeInsets.only(left: 10, right: 10),
            //   child: Obx(
            //     () => Container(
            //       decoration: BoxDecoration(
            //         color: Colors.grey[100],
            //         borderRadius: BorderRadius.circular(30),
            //       ),
            //       child: Stack(
            //         children: [
            //           AnimatedAlign(
            //             curve: Curves.easeInOut,
            //             alignment: signUpController.isSignup.value
            //                 ? Alignment.centerLeft
            //                 : Alignment.centerRight,
            //             duration: Duration(milliseconds: 300),
            //             child: FractionallySizedBox(
            //               widthFactor: 0.53,
            //               child: Container(
            //                 height: 42,
            //                 width: 80,
            //                 decoration: BoxDecoration(
            //                   boxShadow: [
            //                     BoxShadow(
            //                       color: Colors.grey.shade200,
            //                       blurRadius: 10,
            //                       spreadRadius: 2,
            //                       offset: Offset(0, 2),
            //                     ),
            //                   ],
            //                   borderRadius: BorderRadius.circular(30),
            //                   color: Colors.white,
            //                 ),
            //               ),
            //             ),
            //           ),
            //           Row(
            //             children: [
            //               GestureDetector(
            //                 onTap: () {
            //                   signUpController.toggleSignup();
            //                 },
            //                 child: Container(
            //                   padding: EdgeInsets.symmetric(
            //                     vertical: 10,
            //                     horizontal: 60,
            //                   ),
            //                   child: AnimatedDefaultTextStyle(
            //                     style: TextStyle(
            //                       color: signUpController.isSignup.value
            //                           ? Colors.black
            //                           : Colors.grey,
            //                       fontSize: 16,
            //                       fontWeight: signUpController.isSignup.value
            //                           ? FontWeight.w600
            //                           : FontWeight.w400,
            //                     ),
            //                     duration: Duration(milliseconds: 300),
            //                     child: const Text('Sign Up'),
            //                   ),
            //                 ),
            //               ),
            //               SizedBox(width: 6.5),
            //               GestureDetector(
            //                 onTap: () {
            //                   signUpController.toggleSignup();
            //                 },
            //                 child: Container(
            //                   padding: EdgeInsets.symmetric(
            //                     vertical: 10,
            //                     horizontal: 60,
            //                   ),
            //                   child: AnimatedDefaultTextStyle(
            //                     style: TextStyle(
            //                       color: signUpController.isSignup.value
            //                           ? Colors.grey
            //                           : Colors.black,
            //                       fontSize: 16,
            //                       fontWeight: signUpController.isSignup.value
            //                           ? FontWeight.w600
            //                           : FontWeight.w400,
            //                     ),
            //                     duration: Duration(milliseconds: 300),
            //                     child: const Text('Sign In'),
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
              'Full Name',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            TextField(
              decoration: InputDecoration(
                prefixIcon: AppTheme.user, //Image(image: AssetImage('assets/icons/user.png'),height: 15,width: 15,),
                hintText: 'Enter your name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            // const Text(
            //   'Phone Number',
            //   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            // ),
            // const SizedBox(height: 5),
            // TextField(
            //   decoration: InputDecoration(
            //     prefixIcon: Icon(CupertinoIcons.phone_fill),
            //     hintText: 'Enter your name',
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(10),
            //     ),
            //     enabledBorder: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(10),
            //       borderSide: BorderSide(color: Colors.white),
            //     ),
            //     focusedBorder: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(10),
            //       borderSide: BorderSide(color: Colors.white),
            //     ),
            //     filled: true,
            //     fillColor: Colors.white,
            //   ),
            // ),
            // const SizedBox(height: 10),
            const Text(
              'Password',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(AppTheme.lock),
                hintText: 'Enter your password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white, width: 10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10), 
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
              ],
            ),
            
            const SizedBox(height: 50),
        
            Center(
              child: SizedBox(
                width: 400,
                height: 50,
                child: TextButton(
                  onPressed: () {
                    Get.to(()=>Orders());
                  },
                  style: TextButton.styleFrom(backgroundColor: AppTheme.color),
                  child: const Text(
                    'Sign In',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            // const SizedBox(height: 30),
            // Divider(),
            // const SizedBox(height: 20),
            // Center(
            //   child: Column(
            //     children: [
            //       const Text(
            //         'Or Sign Up with',
            //         style: TextStyle(color: Colors.grey),
            //       ),
                  // SizedBox(height: 20),
                  // SizedBox(
                  //   width: 400,
                  //   height: 50,
                  //   child: ElevatedButton.icon(
                  //     onPressed: () {},
                  //     style: ElevatedButton.styleFrom(
                  //       backgroundColor: Colors.white,
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(30),
                  //       ),
                  //     ),
                  //     label: Text(
                  //       'Sign up with Google',
                  //       style: TextStyle(color: Colors.black, fontSize: 16),
                  //     ),
                  //     icon: Image(
                  //       image: AssetImage('assets/icons/google.png'),
                  //       width: 20,
                  //       height: 20,
                  //     ),
                  //   ),
                  // ),
              //   ],
              // ),
            //),
          ],
        ),
      ),
    );
  }
}
