import 'package:flutter/material.dart';
import 'package:medical_app/pages/chatDetail.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pesan Saya'),
        ),
        body: Column(
          children: [
            InkWell(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context){
                return const ChatDetailScreen();
              })),
              child: Card(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
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
                        children: const [
                          Text('Doctor Marco'),
                          Text('haloo ada yang bisa di bantu?')
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
