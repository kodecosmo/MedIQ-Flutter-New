import 'package:flutter/material.dart';
import 'notification_page.dart';
import 'patient_details_page.dart';
import 'connected_page.dart';
import 'status_page.dart';
import 'nfc_page.dart';

class EMTTabNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _navigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case '/':
            builder = (BuildContext _) => NotificationPage();
            break;
          case '/patientDetails':
            builder = (BuildContext _) => PatientDetailsPage();
            break;
          case '/connected':
            builder = (BuildContext _) => ConnectedPage();
            break;
          case '/nfc':
            builder = (BuildContext _) => NFCPage();
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}
