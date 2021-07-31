import 'package:flutter/material.dart';
import 'cardPicking_screen.dart';
import '../components/enableButton.dart';
import '../components/profileHealine.dart';

class MatchingWithScreen extends StatelessWidget {
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
                ProfileHeadline('I\'m interested in matching with...'),
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
