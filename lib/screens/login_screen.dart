import 'package:flutter/material.dart';
import 'package:peoppo/screens/login_SMS_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ElevatedButton(
            child: Text("Login by phone"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginSMSScreen()));
            },
          ),
          ElevatedButton(
            child: Text("Login by google"),
            onPressed: () {},
          ),
          ElevatedButton(
            child: Text("Login by facebook"),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
