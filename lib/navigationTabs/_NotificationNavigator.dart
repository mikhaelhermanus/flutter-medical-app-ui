import 'package:flutter/material.dart';

class NotificationNavigator extends StatefulWidget {
  const NotificationNavigator({ Key? key }) : super(key: key);

  @override
  State<NotificationNavigator> createState() => _NotificationNavigatorState();
}

GlobalKey<NavigatorState> _notificationNavigatorKey = GlobalKey<NavigatorState>();
class _NotificationNavigatorState extends State<NotificationNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _notificationNavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/':
                  return Text('Chat Screen');
                case '/books2':
                  return Text('asd');
              }
              return Container();
            });
      },
    );
  }
}