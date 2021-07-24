import 'package:flutter/material.dart';
import 'CardContainer.dart';

class CardPanel extends StatelessWidget {
  const CardPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.count(
        shrinkWrap: true,
        primary: false,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 2 / 3,
        crossAxisCount: 3,
        children: <Widget>[
          CardContainer(),
          CardContainer(),
          CardContainer(),
          CardContainer(),
          CardContainer(),
          CardContainer(),
        ],
      ),
    );
  }
}
