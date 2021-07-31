import 'package:flutter/material.dart';
import 'gender_screen.dart';
import '../components/enableButton.dart';
import '../components/profileHealine.dart';

class NameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ProfileHeadline(
                  'Now, let us know some things about you before we get started with this adventure...'),
              SizedBox(
                height: 60,
              ),
              Align(
                child: Text(
                  'What is your name',
                  style: TextStyle(fontSize: 24),
                ),
                alignment: Alignment.centerLeft,
              ),
              SizedBox(
                height: 40,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                child: EnableButtonSM('Go', GenderScreen()),
                alignment: Alignment.centerRight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
