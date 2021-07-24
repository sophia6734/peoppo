import 'package:flutter/material.dart';
import 'interest_screen.dart';
import '../widget/workWidget.dart';

class GraduatedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WorkWidget('Where were you graduated', 'School Name',
        'Degree/Graduate/undergrad', InterestScreen());
  }
}
