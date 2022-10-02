import 'package:flutter/material.dart';
import 'package:medical_app/models/apointment_data.dart';
import 'package:intl/intl.dart';

class AppointmentList extends StatelessWidget {
  final List<Appointment> appointments = [
    Appointment(
        id: '1',
        title: 'Checking Condition',
        doctorName: 'Indah Kusuma',
        date: DateTime.now()),
    Appointment(
        id: '2',
        title: 'Consultation',
        doctorName: 'Nycta Gina',
        date: DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: appointments.map((item) {
          return Card(
            child: Container(
                margin: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width ,
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey,
                      child: CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage('assets/pm.png'),
                      ),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Name :',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                            Text(
                              item.doctorName,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'Issue :',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                            Text(
                              item.title,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(DateFormat().format(item.date))
                      ],
                    )
                  ],
                )),
          );
        }).toList(),
      ),
    );
  }
}
