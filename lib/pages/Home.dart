import 'package:flutter/material.dart';
import 'package:medical_app/pages/Appointment.dart';
import 'package:medical_app/pages/IndexHome.dart';
import 'package:medical_app/pages/loginScreen.dart';
import 'package:medical_app/pages/registerScreen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  void onChangeMenu(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> pages = [
    const IndexHome(),
    const AppointmentScreen(),
    const Text(
      'Chat Screen works',
      style: TextStyle(fontSize: 30),
    ),
    const LoginScreen()
    // const RegisterScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 111, 90, 90),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orangeAccent,
        backgroundColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: onChangeMenu,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                // color: Colors.black54,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_month_outlined,
                // color: Colors.black54,
              ),
              label: 'Appointment'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_bubble_outline_outlined,
                // color: Colors.black54,
              ),
              label: 'Chat'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline_rounded,
                // color: Colors.black54,
              ),
              label: 'Account')
        ],
      ),
      body: pages[selectedIndex],
    );
  }
}
