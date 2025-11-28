import 'package:flutter/material.dart';
import 'package:food_delivery/Constant/app_theme.dart';
import 'package:food_delivery/pages/orders.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue.shade100,
              Colors.white
            ],
          ),
         ),
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             const Text(
                'Verification Code',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              const Text(
                'We have  send the code verification to',
                style: TextStyle(fontSize: 16.0, height: 0.5,color: Colors.grey),
              ),
              SizedBox(height: 20.0),
              RichText(
                text:TextSpan(
                  text: 'your number ',
                  style: TextStyle(fontSize: 16.0, height: 0.5, color: Colors.grey),
                  children: [
                    TextSpan(
                      text: '+01 5594969850',
                      style: TextStyle(fontSize: 18.0, height: 0.5, color: Colors.black),
                    ),
                  ],
                ),
              ),
             
              SizedBox(height: 30.0),
              
              PinCodeTextField(
                appContext: context,
                length: 4,
                cursorColor: Colors.black,
                // backgroundColor: Colors.white,
                keyboardType: TextInputType.number,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10.0),
                  fieldHeight: 59,
                  fieldWidth: 65,
                  inactiveColor: Colors.grey.shade200,
                  selectedColor: Colors.black,
                  activeColor: Colors.grey.shade200,
                  selectedFillColor: Colors.grey.shade200,
                  inactiveFillColor: Colors.grey.shade200,
                  activeFillColor: Colors.grey.shade200
                ),
                //backgroundColor: Colors.blue[60],
                animationDuration: Duration(milliseconds: 300),
                enableActiveFill: true,

              ),
                
              SizedBox(height: 20.0),
              Text('02:39',
              style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 16),),
              SizedBox(height:30),
              SizedBox(
                height: 60.0,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(Orders());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.color,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Didn\'t receive the code?',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey
                ,),),
                TextButton(
                  onPressed: () {
                    
                  },
                  child: Text('Resend',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                  ),),
                ),
              ],)
            ],
          ),
        ),
      ),
    );
  }
}
