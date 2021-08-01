import 'package:peoppo/components/sign_in_button.dart';
import 'package:peoppo/utils/constants.dart';
import 'package:peoppo/utils/resource.dart';
import 'package:flutter/material.dart';
import 'package:peoppo/screens/login_SMS_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Login by phone"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginSMSScreen()));
              },
            ),
            SignInButton(
              loginType: LoginType.Google,
              faIcon: FaIcon(FontAwesomeIcons.google),
              textLabel: Constants.textSignInGoogle,
            ),
            SignInButton(
              loginType: LoginType.Facebook,
              faIcon: FaIcon(FontAwesomeIcons.facebook),
              textLabel: Constants.textSignInFacebook,
            ),
          ],
        ),
      ),
    );
  }
}
