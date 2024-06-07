import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    final LatLng targetLocation = LatLng(6.9271, 79.8612);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(
            kToolbarHeight + 20), // Height of AppBar + padding
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 20.0),
          child: AppBar(
            leading: const Icon(
              Icons.sort_rounded,
              size: 30,
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0.0, // Add padding above title
            title: const Text(
              "MedIQ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              Container(
                width: 40.0,
                height: 40.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 240, 127, 127),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.emergency_sharp),
                  iconSize: 20.0,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: targetLocation,
                zoom: 16.0,
              ),
              markers: {
                Marker(
                  markerId: MarkerId('targetLocation'),
                  position: targetLocation,
                  icon: BitmapDescriptor.defaultMarker,
                ),
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Card(
              margin: const EdgeInsets.only(bottom: 52),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: const BorderSide(color: Colors.black),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Connected',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(Icons.circle, color: Colors.green),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          'EMT - 4 min',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey.shade700),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.videocam, color: Colors.grey[700]),
                            iconSize: 30,
                            onPressed: () {
                              // Open video call
                            },
                          ),
                        ),
                        const SizedBox(width: 16),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey.shade700),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.mic, color: Colors.grey[700]),
                            iconSize: 30,
                            onPressed: () {
                              // Open audio call
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
