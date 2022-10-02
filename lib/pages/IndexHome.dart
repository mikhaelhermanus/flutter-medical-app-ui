import 'package:flutter/material.dart';
import 'package:medical_app/widgets/doctorlist_item.dart';
import 'package:medical_app/widgets/specialist_item.dart';

class IndexHome extends StatelessWidget {
  const IndexHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(children: [
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Hello,",
                    style: TextStyle(fontSize: 14, color: Colors.black87),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Mikhael',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )
                ],
              ),
              const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage('assets/pm.png'),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 223, 200, 228),
                borderRadius: BorderRadius.circular(16)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/surgeon.png',
                  width: 92,
                  height: 100,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "How Do you Feel?",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const SizedBox(
                      width: 120,
                      child: Text(
                        "Fill out your medical right now",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 150,
                      height: 30,
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.blueAccent),
                      child: const Center(
                          child: Text(
                        'Get Started',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w300),
                      )),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 60,
            padding: const EdgeInsets.only(left: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color.fromARGB(95, 179, 173, 173),
            ),
            child: Row(children: const [
              Icon(
                Icons.search,
                size: 32,
                color: Colors.black54,
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                "How Can We Help You ?",
                style: TextStyle(color: Colors.black54),
              )
            ]),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                SpecialistItem(
                    imagePath: 'assets/clean.png', imageName: 'Dentist'),
                SizedBox(
                  width: 8,
                ),
                SpecialistItem(
                    imagePath: 'assets/knife.png', imageName: 'Surgeon'),
                SizedBox(
                  width: 8,
                ),
                SpecialistItem(
                    imagePath: 'assets/lungs.png', imageName: 'Therapy'),
                SizedBox(
                  width: 8,
                ),
                SpecialistItem(
                    imagePath: 'assets/hormones.png',
                    imageName: 'Physiologist'),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Doctor List',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              Text(
                'See All',
                style: TextStyle(fontSize: 14, color: Colors.black38),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                DoctorItemList(
                    image: 'assets/1.png',
                    name: 'Nycta Gina',
                    specialist: 'Pediatrician'),
                DoctorItemList(
                    image: 'assets/2.png',
                    name: 'Nycta Gina',
                    specialist: 'Pediatrician'),
                DoctorItemList(
                    image: 'assets/3.png',
                    name: 'Nycta Gina',
                    specialist: 'Pediatrician'),
                DoctorItemList(
                    image: 'assets/4.png',
                    name: 'Nycta Gina',
                    specialist: 'Pediatrician')
              ],
            ),
          )
        ]),
      )),
    );
  }
}
