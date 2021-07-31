import 'package:flutter/material.dart';
import '../screens/graduate_screen.dart';
import '../components/enableButton.dart';
import '../components/profileHealine.dart';

class WorkWidget extends StatelessWidget {
  WorkWidget(this.title, this.textField1, this.textField2, this.page);
  final String title;
  final String textField1;
  final String textField2;
  final StatelessWidget page;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ProfileHeadline(title),
              Column(
                children: [
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: textField1,
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: textField2,
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(
                    child: EnableButtonSM('Go', page),
                    alignment: Alignment.centerRight,
                  ),
                ],
              ),
              EnableButtonLG('Skip', page),
              SizedBox(height: 0),
            ],
          ),
        ),
      ),
    );
  }
}
