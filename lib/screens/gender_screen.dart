import 'package:flutter/material.dart';
import 'birthday_screen.dart';
import '../components/enableButton.dart';

class GenderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Identify myself as...'),
            Container(
              child: Column(
                children: [
                  EnableButtonLG('Man', BirthdayScreen()),
                  SizedBox(height: 10),
                  EnableButtonLG('Woman', BirthdayScreen()),
                  SizedBox(height: 10),
                  EnableButtonLG('Bi-Sexual', BirthdayScreen()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
