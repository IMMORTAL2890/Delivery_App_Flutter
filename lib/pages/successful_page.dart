import 'package:flutter/material.dart';
import 'package:food_delivery/Constant/app_theme.dart';
import 'package:food_delivery/pages/sign_up.dart';
import 'package:get/route_manager.dart';

class SuccessfulPage extends StatefulWidget {
  const SuccessfulPage({super.key});

  @override
  State<SuccessfulPage> createState() => _SuccessfulPageState();
}

class _SuccessfulPageState extends State<SuccessfulPage> {
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
            ]
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Container(
              //   decoration: BoxDecoration(
              //     color: AppTheme.color,
              //     shape: BoxShape.circle,
              //   ),
              //   child: Padding(
              //     padding: const EdgeInsets.all(15.0),
              //     child: Icon(Icons.check, color: Colors.white, size: 100),
              //   ),
              // ),
              //HeroIcon(HeroIcons.checkBadge,size: 150,color: AppTheme.color,),
              Image(image:AssetImage('assets/icons/badge.png'),height: 200,width: 200, ),
              SizedBox(height: 10),
              Text(
                'Your order has been',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
        
              Text(
                'completed successfully',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 250,
                height: 50,
                child: TextButton(
                  onPressed: () {
                    Get.offAll(()=>SignUp());
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: AppTheme.color,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    side: BorderSide(color: AppTheme.color),
                  ),
                  child: Text(
                    'Okay',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
