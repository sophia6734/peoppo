import 'package:flutter/material.dart';
import '../components/dateTimePicker.dart';
import '../components/enableButton.dart';
import 'matchingWith_screen.dart';

class BirthdayScreen extends StatelessWidget {
  DateTime _dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('What\'s your birthday...'),
            DateTimePicker(),
            EnableButtonSM('Not Now', MatchingWithScreen()),
          ],
        ),
      ),
    );
  }
}
