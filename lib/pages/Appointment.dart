import 'package:flutter/material.dart';
import 'package:medical_app/widgets/appointment_widgets/apointment_complete.dart';
import 'package:medical_app/widgets/appointment_widgets/appointment_list.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
      DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Appointment'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'Your Appointment',
                ),
                Tab(
                  text: 'History',
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            AppointmentList(),
            AppointmentComplete()
          ]),
        ),
      ); 
  }
}
