import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/pages/document.dart';

class UploadComponent extends StatelessWidget {
  final String? document;

  const UploadComponent({super.key, this.document});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$document deails',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15.0),
            Text(
              'Upload focused photo of your $document for faster verification',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 20.0),

            for (int i = 0; i < 2; i++) ...[
              DottedBorder(
                color: Colors.grey,
                strokeWidth: 2,
                dashPattern: [2, 2],
                borderType: BorderType.RRect,
                radius: Radius.circular(10),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Front side photo of your $document with your clear name and photo',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      ElevatedButton.icon(
                        onPressed: () {},
                        label: Text(
                          'Upload Photo',
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 20,
                          ),
                        ),
                        icon: Icon(Icons.camera_alt, size: 18,color: Colors.redAccent,),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(color: Colors.redAccent),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40.0,),
            ],
            SizedBox(height: 40.0,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Document()));
                  },
                    style:ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      )
                    ), 
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      height: 3
                    ),
                    )),
            )
          ],
        ),
      ),
    );
  }
}
