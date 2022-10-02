import 'package:flutter/material.dart';
import 'package:medical_app/models/appointmen_complete_data.dart';
import 'package:intl/intl.dart';

class AppointmentComplete extends StatelessWidget {
  final List<Appointment_Complete> history = [
    Appointment_Complete(
        id: '1',
        title: 'Consultation',
        status: 'Complete',
        date: DateTime.now()),
    Appointment_Complete(
        id: '2',
        title: 'Medical Check Up',
        status: 'Reschedule',
        date: DateTime.now()),
    Appointment_Complete(
        id: '3', title: 'Medicine', status: 'Canceled', date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: history.map((item) {
          return Card(
            child: Container(
                margin: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Text(
                      item.title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    Text(DateFormat().format(item.date)),
                    Container(
                      width: 120,
                      height: 30,
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: item.status == 'Complete'
                              ? Colors.lightGreen
                              : item.status == 'Reschedule'
                                  ? Colors.grey
                                  : item.status == 'Canceled'
                                      ? Colors.red
                                      : Colors.black),
                      child: Center(
                        child: Text(
                          item.status,
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                  ],
                )),
          );
        }).toList(),
      ),
    );
  }
}
