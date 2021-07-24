import 'package:flutter/material.dart';
import '../components/enableButton.dart';
import 'job_screen.dart';
import '../components/cardPanel.dart';

class CardPicking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('CardPicking'),
              CardPanel(),
              EnableButtonSM('Go', JobScreen()),
            ],
          ),
        ),
      ),
    );
  }
}
