import 'package:flutter/material.dart';

class ProfileHeadline extends StatelessWidget {
  final String headline;
  ProfileHeadline(this.headline);
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Text(
          headline,
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      alignment: Alignment.centerLeft,
    );
  }
}
