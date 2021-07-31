import 'package:flutter/material.dart';
import '../screens/notification_screen.dart';
import '../components/enableButton.dart';

class EnableScreen extends StatelessWidget {
  EnableScreen(this.title, this.page);
  final String title;
  final StatelessWidget page;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Container(
              child: Column(children: [
                EnableButtonLG('Enable', page),
                SizedBox(height: 10),
                EnableButtonLG('Not Now', page)
              ]),
            )
          ],
        ),
      ),
    );
  }
}
