import 'package:flutter/material.dart';
import '../screens/graduate_screen.dart';
import '../components/enableButton.dart';

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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(title),
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
                ],
              ),
              EnableButtonSM('Go', page),
              EnableButtonLG('Skip', page),
            ],
          ),
        ),
      ),
    );
  }
}
