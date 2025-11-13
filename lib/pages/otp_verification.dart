import 'package:flutter/material.dart';
import 'package:food_delivery/pages/personal_information.dart';
import 'package:food_delivery/pages/registration.dart';
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
      appBar: AppBar(
      leading: IconButton(onPressed: () {Navigator.pop(context);}, icon: Icon(Icons.arrow_back,color: Colors.black,)),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const Text(
                'Enter OTP to verify',
                style: TextStyle(
                  fontSize: 30.0,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              const Text(
                'A 6 digit OTP has been sent to your phone',
                style: TextStyle(fontSize: 18.0, height: 0.5),
              ),
              Row(
                children: [
                  const Text('number ', style: TextStyle(fontSize: 18.0)),
                   Text(
                    '+91 9999888888',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Registration()),
                      );
                    },
                    child: const Text(
                      "Change",
                      style: TextStyle(fontSize: 18, color: Colors.red),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              const Text('Enter OTP text', style: TextStyle(fontSize: 18)),
              SizedBox(height: 10.0),

              PinCodeTextField(
                appContext: context,
                length: 6,
                keyboardType: TextInputType.number,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(8.0),
                  fieldHeight: 40,
                  fieldWidth: 40,
                  activeFillColor: Colors.white,
                  selectedFillColor: Colors.white,
                  inactiveFillColor: Colors.white,
                ),
              ),

              SizedBox(height: 20.0),
              SizedBox(
                height: 50.0,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>PersonalInformation()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: const Text(
                    'Verify OTP',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
