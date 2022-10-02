import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:medical_app/models/message_data.dart';

class ChatDetailScreen extends StatefulWidget {
  const ChatDetailScreen({Key? key}) : super(key: key);

  @override
  State<ChatDetailScreen> createState() => _ChatDetailScreenState();
}

class _ChatDetailScreenState extends State<ChatDetailScreen> {
  List<Message> messages = [
    Message(text: 'Yess Sure', date: DateTime.now(), isSentByMe: false),
    Message(text: 'Yess Sure', date: DateTime.now(), isSentByMe: true),
    Message(text: 'Yess Sure', date: DateTime.now(), isSentByMe: false),
    Message(text: 'Yess Sure', date: DateTime.now(), isSentByMe: true),
  ].reversed.toList();

  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat Detail'),
      ),
      body: Column(
        children: [
          Expanded(
              child: GroupedListView<Message, DateTime>(
            padding: const EdgeInsets.all(8),
            elements: messages,
            groupBy: (message) => DateTime(
                message.date.year, message.date.month, message.date.day),
            groupHeaderBuilder: (Message message) => SizedBox(
              height: 40,
              child: Center(
                child: Card(
                  color: Theme.of(context).primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(DateFormat.yMMMd().format(message.date)),
                  ),
                ),
              ),
            ),
            itemBuilder: (context, Message message) => Align(
              alignment: message.isSentByMe
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              child: Card(
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(message.text),
                ),
              ),
            ),
          )),
          Container(
            margin: EdgeInsets.only(bottom: 8),
            color: Colors.grey.shade300,
            child: TextField(
              onSubmitted: (value) {
                final message = Message(
                    text: value, date: DateTime.now(), isSentByMe: true);
                setState(() => messages.add(message));
              },
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(12),
                  hintText: 'Type Your Message here...'),
            ),
          )
        ],
      ),
    );
  }
}
