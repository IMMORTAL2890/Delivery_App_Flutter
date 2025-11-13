import 'package:flutter/material.dart';
import 'package:food_delivery/Component/rg_complete_companent.dart';
import 'package:food_delivery/pages/orders.dart';

class RegistrationComplete extends StatefulWidget {
  const RegistrationComplete({super.key});

  @override
  State<RegistrationComplete> createState() => _RegistrationCompleteState();
}

class _RegistrationCompleteState extends State<RegistrationComplete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)
              )
            ),
            child: AppBar(
            title: Text(
              'Registration Complete',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
              ),
          ),
          ),
          
        ),
      
      body: Column(
        children: [
          Container(
           color: Colors.redAccent,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your application is under Verification',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                          ),
                          const SizedBox(height: 10,),
                          Text(
                            'Account will get activated in 48hrs',
                            style: TextStyle(
                                color: Colors.white
                            ),)
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: double.minPositive,),
                Image.asset('assets/images/registration_complete.png',height: 120,)
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                RgCompleteCompanent(title: 'Personal Information', color: true,),
                const SizedBox(height:10),
                RgCompleteCompanent(title: 'Personal Documents', color: false,),
                const SizedBox(height:10),
                RgCompleteCompanent(title: 'Vehicles Details', color: true,),
                const SizedBox(height:10),
                RgCompleteCompanent(title: 'Bank Account Details', color: true,),
                const SizedBox(height:10),
                RgCompleteCompanent(title: 'Emergency Details', color: true,),
                const SizedBox(height:10),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Orders()));
                }, child: Text('Submit')),
                const SizedBox(height:90),
                  
                RichText(
                  text:TextSpan(
                    children:[
                      TextSpan(
                        text: 'Need Help?',
                      style: TextStyle(color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'Contact Us',
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 15,
                          decoration: TextDecoration.underline
                        ),
                      )
                    ]
                  )),
                  
                  
              ],
            ),
          )
        ],
        ),
    );
  }
}