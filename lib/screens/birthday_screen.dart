import 'package:flutter/material.dart';
import '../components/dateTimePicker.dart';
import '../components/enableButton.dart';
import 'matchingWith_screen.dart';
import '../components/profileHealine.dart';

class BirthdayScreen extends StatelessWidget {
  DateTime _dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProfileHeadline('What\'s your birthday...'),
                Column(
                  children: [
                    DateTimePicker(),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      child: EnableButtonSM('Go', MatchingWithScreen()),
                      alignment: Alignment.centerRight,
                    ),
                  ],
                ),
                SizedBox(
                  height: 0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
