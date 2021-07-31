import 'package:flutter/material.dart';
import '../components/enableButton.dart';
import 'job_screen.dart';
import '../components/cardPanel.dart';
import '../components/profileHealine.dart';

class CardPicking extends StatelessWidget {
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
              ProfileHeadline('CardPicking'),
              CardPanel(),
              EnableButtonSM('Go', JobScreen()),
            ],
          ),
        ),
      ),
    );
  }
}
