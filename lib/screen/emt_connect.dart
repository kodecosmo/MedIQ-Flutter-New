import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final LatLng targetLocation = LatLng(6.9271, 79.8612);

    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton<String>(
            onSelected: (String result) {
              // Handle status change
              print("Status changed to $result");
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'Available',
                child: Text('Available'),
              ),
              const PopupMenuItem<String>(
                value: 'Away',
                child: Text('Away'),
              ),
              const PopupMenuItem<String>(
                value: 'Personal',
                child: Text('Personal'),
              ),
            ],
          ),
        ],
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
            padding: const EdgeInsets.all(16.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: Colors.black),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
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
                          'EMT - 4 min away',
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
                        SizedBox(width: 16),
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
