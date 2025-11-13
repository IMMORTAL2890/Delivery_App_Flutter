import 'package:flutter/material.dart';
import 'package:food_delivery/Component/document_componet.dart';
import 'package:food_delivery/pages/personal_documents.dart';
import 'package:food_delivery/pages/registration_complete.dart';
import 'package:google_fonts/google_fonts.dart';

class Document extends StatefulWidget {
  const Document({super.key});

  @override
  State<Document> createState() => _DocumentState();
}

class _DocumentState extends State<Document> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromARGB(255, 251, 196, 101), Colors.redAccent],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                ),
                const SizedBox(height: 10),
                Text(
                  'Welcome to EatFit',
                  style: GoogleFonts.nunito(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Just a few steps to complete and then you can start earning with us',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),

          // ✅ Body content area
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30.0),
                const Text(
                  'Pending Documents',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 10.0),

                // ElevatedButton(
                //   onPressed: (){},
                //   style: ElevatedButton.styleFrom(
                //     elevation: 3,
                //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                //       ),
                //       child: Row(
                //         mainAxisSize: MainAxisSize.min, // shrink to content
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: const [
                //           Text(
                //             'Personal Documents',
                //             style: TextStyle(fontSize: 18,height: 3),
                //           ),
                //           SizedBox(width: 140), // space between text and icon
                //           Icon(Icons.arrow_forward),
                //         ],
                //       ),
                //  )
                //)
                DocumentCard(label: 'Personal Documents',onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => PersonalDocuments())),),
                SizedBox(height: 10),
                DocumentCard(label: 'Vehicle Details'),
                SizedBox(height: 10),
                DocumentCard(label: 'Bank Account Details'),
                SizedBox(height: 10),
                DocumentCard(label: 'Personal Emergency'),
                SizedBox(height: 10),

                Text('Completed Documents',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),

                SizedBox(height: 10),
                 DocumentCard(label: 'Personal Information',isCompleted: true,),
                SizedBox(height: 40),

                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationComplete()));},
                    style: ElevatedButton.styleFrom(
                      backgroundColor:Colors.redAccent,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                    ),
                    child: Text('Submit',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        height: 3
                      ),
                      ),
                    ),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
