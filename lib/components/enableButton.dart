import 'package:flutter/material.dart';
import '../screens/notification_screen.dart';

class EnableButton extends StatelessWidget {
  EnableButton(this.title, this.page, this.width);
  final StatelessWidget page;
  final String title;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 50,
      child: TextButton(
        child: Text(title),
        style: TextButton.styleFrom(
          primary: Colors.black,
          backgroundColor: Theme.of(context).accentColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),

          //padding: EdgeInsets.symmetric(horizontal: 100),
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return page;
          }));
        },
      ),
    );
  }
}

class EnableButtonLG extends StatelessWidget {
  EnableButtonLG(this.title, this.page);
  final StatelessWidget page;
  final String title;

  @override
  Widget build(BuildContext context) {
    return EnableButton(title, page, 300);
  }
}

class EnableButtonSM extends StatelessWidget {
  EnableButtonSM(this.title, this.page);
  final StatelessWidget page;
  final String title;

  @override
  Widget build(BuildContext context) {
    return EnableButton(title, page, 100);
  }
}
