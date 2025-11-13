import 'package:flutter/material.dart';
import 'package:food_delivery/Component/document_componet.dart';
import 'package:food_delivery/Component/upload_component.dart';

class PersonalDocuments extends StatelessWidget {
  const PersonalDocuments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Personal documents',
            style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 20,),
            Text('Upload focused photos of below documents for faster verification',
            style: TextStyle(
              fontSize: 18,
            ),),
            SizedBox(height: 20,),
            DocumentCard(label: 'Aadhar Card',onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> const UploadComponent(document: 'Aadhar Card')));},),
            SizedBox(height: 10,),
            DocumentCard(label: 'Pan Card',onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> const UploadComponent(document: 'Pan Card')));}),
            SizedBox(height: 10,),
            DocumentCard(label: 'Driving License',onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> const UploadComponent(document: 'Driving Licence')));}),
          

          ],
        ),
      ),
    );
  }
}