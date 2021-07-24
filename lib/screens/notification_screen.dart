import 'package:flutter/material.dart';
import 'name_screen.dart';
import '../widget/enableWidget.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EnableScreen('Enable Notification Service', NameScreen());
  }
}
