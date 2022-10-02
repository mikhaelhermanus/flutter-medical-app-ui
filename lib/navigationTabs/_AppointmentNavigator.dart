import 'package:flutter/material.dart';
import 'package:medical_app/models/apointment_data.dart';
import 'package:medical_app/pages/Appointment.dart';

class AppointmentNavigator extends StatefulWidget {
  const AppointmentNavigator({ Key? key }) : super(key: key);

  @override
  State<AppointmentNavigator> createState() => _AppointmentNavigatorState();
}
GlobalKey<NavigatorState> _appointmentNavigatorKey = GlobalKey<NavigatorState>();

class _AppointmentNavigatorState extends State<AppointmentNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _appointmentNavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/':
                  return AppointmentScreen();
                case '/detailAppointment':
                  return Text('SecondPage');
              }
              return Container();
            });
      },
    );
  }
}