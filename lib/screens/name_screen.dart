import 'package:flutter/material.dart';
import 'gender_screen.dart';
import '../components/enableButton.dart';

class NameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                  'Now, let us know some things about you before we get started with this adventure...'),
              Align(
                child: Text('What is your name'),
                alignment: Alignment.centerLeft,
              ),
              Column(
                children: [
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    child: EnableButtonSM('Go', GenderScreen()),
                    alignment: Alignment.centerRight,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
