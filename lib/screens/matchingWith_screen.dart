import 'package:flutter/material.dart';
import 'cardPicking_screen.dart';
import '../components/enableButton.dart';

class MatchingWithScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('I\'m interested in matching with...'),
            Container(
              child: Column(
                children: [
                  EnableButtonLG('Man', CardPicking()),
                  SizedBox(height: 10),
                  EnableButtonLG('Woman', CardPicking()),
                  SizedBox(height: 10),
                  EnableButtonLG('I don\'t mind both', CardPicking()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
