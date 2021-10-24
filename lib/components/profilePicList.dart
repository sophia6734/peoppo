import 'package:flutter/material.dart';
import 'package:peoppo/screens/chatDetail_screen.dart';

class ProfilePicList extends StatefulWidget {
  String imagePath;

  ProfilePicList({
    required this.imagePath,
  });
  @override
  _ProfilePicListState createState() => _ProfilePicListState();
}

class _ProfilePicListState extends State<ProfilePicList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ChatDetailScreen(
            imagePath: widget.imagePath,
          );
        }));
      },
      child: Container(
        padding: EdgeInsets.only(left: 16, top: 10, bottom: 10),
        child: CircleAvatar(
          backgroundImage: AssetImage(widget.imagePath),
          maxRadius: 30,
        ),
      ),
    );
  }
}
