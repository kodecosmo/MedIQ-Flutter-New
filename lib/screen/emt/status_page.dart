// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class StatusPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(Icons.menu),
//           onPressed: () {},
//         ),
//         title: Text('MedIQ'),
//         centerTitle: true,
//         actions: [
//           PopupMenuButton<String>(
//             onSelected: (String result) {
//               // Handle status change
//             },
//             itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
//               const PopupMenuItem<String>(
//                 value: 'Available',
//                 child: Text('Available'),
//               ),
//               const PopupMenuItem<String>(
//                 value: 'Away',
//                 child: Text('Away'),
//               ),
//               const PopupMenuItem<String>(
//                 value: 'Personal',
//                 child: Text('Personal'),
//               ),
//             ],
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Center(
//               child: Icon(
//                 Icons.map,
//                 size: 200,
//                 color: Colors.grey,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 30.0),
//             child: Padding(
//               padding: const EdgeInsets.all(30.0),
//               child: Card(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8),
//                   side: BorderSide(color: Colors.black),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         children: [
//                           Text(
//                             'Connected',
//                             style: GoogleFonts.poppins(
//                               textStyle: TextStyle(
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                           Spacer(),
//                           Icon(Icons.circle, color: Colors.green),
//                         ],
//                       ),
//                       SizedBox(height: 8),
//                       Text(
//                         'ETA - 4 min',
//                         style: GoogleFonts.poppins(
//                           textStyle: TextStyle(
//                             fontSize: 16,
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 8),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           IconButton(
//                             icon: Icon(Icons.videocam),
//                             onPressed: () {},
//                           ),
//                           IconButton(
//                             icon: Icon(Icons.mic),
//                             onPressed: () {},
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }