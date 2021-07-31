import 'package:flutter/material.dart';
import 'birthday_screen.dart';
import '../components/enableButton.dart';
import '../components/profileHealine.dart';

class GenderScreen extends StatelessWidget {
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
              ProfileHeadline('Identify myself as...'),
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
              ),
              SizedBox(
                height: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
