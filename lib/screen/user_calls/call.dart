// import 'package:flutter/material.dart';
// import 'package:mediq_flutter/screen/user_calls/calling_api.dart';
// import 'package:mediq_flutter/screen/user_calls/utils.dart';
// import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

// class Calls extends StatelessWidget {
//   final String callId;
//   Calls({required this.callId});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: ZegoUIKitPrebuiltCall(
//         appID: Utils.appId,
//         appSign: Utils.appSignIn,
//         userID: localUserId,
//         userName: "user-$localUserId",
//         callID: callId,

//         config: ZegoUIKitPrebuiltCallConfig.oneOnOneVoiceCall(
//           // ..onOnlySelfInRoom: (context) {
//           //   Navigator.of(context).pop();
//           // },
//       )
//     ));
    
//   }
// }
