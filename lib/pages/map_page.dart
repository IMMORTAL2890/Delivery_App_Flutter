import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/Constant/app_theme.dart';
import 'package:food_delivery/pages/successful_page.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:heroicons/heroicons.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  // STATIC COORDINATES
  static const LatLng nashikLocation = LatLng(20.000, 73.783);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            GoogleMap(
              initialCameraPosition: CameraPosition(
                target: nashikLocation,
                zoom: 13,
              ),
            ),
            // ------------------ YOUR CUSTOM BOTTOM PANEL ------------------
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, -2),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // USER ROW
                    Row(
                      children: <Widget>[
                        const HeroIcon(HeroIcons.user, color: AppTheme.color),
                        const SizedBox(width: 8),
                        const Text(
                          'Aman Sharma',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10),
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: Color(0x190b488e),
                          child: const Icon(
                            CupertinoIcons.phone_fill,
                            color: AppTheme.color,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 12),

                    // ADDRESS
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(AppTheme.mapPin, color: AppTheme.color),
                        const SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Pickup Address',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "201/D, Ananta Apts, Near Jal Bhawan, Andheri 400069",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 14),

                    // START BUTTON
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Get.to(SuccessfulPage());
                        },
                        icon: const Icon(AppTheme.plane, color: Colors.white),
                        label: const Text(
                          'Start',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppTheme.color,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
