import 'package:flutter/material.dart';
import 'graduate_screen.dart';
import '../widget/workWidget.dart';

class JobScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WorkWidget('What do you do for a living', 'Job Title',
        'Company/Industry', GraduatedScreen());
  }
}
