// import 'package:flutter/material.dart';
// import 'dart:math' as math;
// import 'package:mediq_flutter/screen/user_calls/call.dart';

// // generate a random user id
// final String localUserId = math.Random().nextInt(10000).toString();
// final callIdTextCtrl = TextEditingController();

// class CallingScreen extends StatelessWidget {
//   const CallingScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Padding(
//           padding: EdgeInsets.all(16.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Expanded(
//                 child: TextFormField(
//                   controller: callIdTextCtrl,
//                   decoration: InputDecoration(
//                     labelText: 'Join a call by ID',
//                   ),
//                 ),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) {
//                       return Calls(callId: callIdTextCtrl.text);
//                     }),
//                   );
//                 },
//                 child: Text('Join'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
