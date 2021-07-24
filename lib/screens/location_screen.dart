import 'package:flutter/material.dart';
import 'notification_screen.dart';
import '../widget/enableWidget.dart';

class LocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EnableScreen('Enable Location Service', NotificationScreen());
  }
}
