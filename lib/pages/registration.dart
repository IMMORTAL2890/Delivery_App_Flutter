import 'package:flutter/material.dart';
import 'package:food_delivery/pages/otp_verification.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFFC1C1), Color(0xFFFFEBEB)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [ 
                  Center(
                    child: Image.asset(
                      'assets/images/partner.png',
                      height: 300,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          height: 300,
                          width: 200,
                          color: Colors.grey[300],
                          child: const Icon(Icons.image, size: 100),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 30),

                  const Text(
                    "Be a EatFit Partner",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 8),

                  const Text(
                    
                    "Get a stable monthly income",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 30),

                  Text(
                    "Enter Mobile Number",
                    style: TextStyle(
                      fontSize: 18
                    ),
                    ),  

                    SizedBox(height: 20.0),
                  TextField(
                    //controller: _phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "e.g. 9999999999",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      prefixIcon: const Icon(Icons.phone_android),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),

                  Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value ?? false;
                          });
                        },
                        activeColor: Colors.redAccent,
                      ),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            text: 'By signing up I agree to the ',
                            style: const TextStyle(color: Colors.black87),
                            children: [
                              TextSpan(
                                text: 'Terms of use ',
                                style: const TextStyle(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.bold),
                              ),
                              const TextSpan(text: 'and '),
                              TextSpan(
                                text: 'Privacy Policy.',
                                style: const TextStyle(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed:
                         () {
                             Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context) => OtpVerification())
                             );
                            }
                        ,
                      child: const Text(
                        "Send OTP",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}