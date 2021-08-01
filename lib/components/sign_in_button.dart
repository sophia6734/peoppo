import 'package:firebase_auth/firebase_auth.dart';
import 'package:peoppo/services/firebase_service.dart';
import 'package:peoppo/utils/constants.dart';
import 'package:peoppo/utils/resource.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:peoppo/screens/home_screen.dart';

class SignInButton extends StatefulWidget {
  final FaIcon faIcon;
  final LoginType loginType;
  final textLabel;

  SignInButton(
      {Key? key,
      required this.faIcon,
      required this.loginType,
      required this.textLabel})
      : super(key: key);

  @override
  _SignInButtonState createState() => _SignInButtonState();
}

class _SignInButtonState extends State<SignInButton> {
  bool isLoading = false;
  FirebaseService service = new FirebaseService();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return !isLoading
        ? SizedBox(
            width: size.width * 0.8,
            child: OutlinedButton.icon(
              icon: this.widget.faIcon,
              onPressed: () async {
                setState(() {
                  isLoading = true;
                });
                await this.loginWithProviders();
                setState(() {
                  isLoading = false;
                });
              },
              label: Text(
                this.widget.textLabel,
                style: TextStyle(
                    color: Constants.kBlackColor, fontWeight: FontWeight.bold),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Constants.kGreyColor),
                  side: MaterialStateProperty.all<BorderSide>(BorderSide.none)),
            ),
          )
        : CircularProgressIndicator();
  }

  void showMessage(FirebaseAuthException e) {
    showDialog(
        context: context,
        builder: (BuildContext builderContext) {
          return AlertDialog(
            title: Text("Error"),
            content: Text(e.message!),
            actions: [
              TextButton(
                child: Text("Ok"),
                onPressed: () async {
                  Navigator.of(builderContext).pop();
                  if (e.code == 'account-exists-with-different-credential') {
                    List<String> emailList = await FirebaseAuth.instance
                        .fetchSignInMethodsForEmail(e.email!);
                    if (emailList.first == "google.com") {
                      await this.service.signInwithGoogle(true, e.credential);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    }
                  }
                },
              )
            ],
          );
        });
  }

  Future<void> loginWithProviders() async {
    String? displayName;
    Resource? result = Resource(status: Status.Error);
    try {
      switch (this.widget.loginType) {
        case LoginType.Google:
          displayName = (await service.signInwithGoogle());
          break;
        case LoginType.Facebook:
          result = await service.signInWithFacebook();
          print(result);
          break;
      }
      if (result!.status == Status.Success || displayName != null) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      }
    } on Exception catch (e) {
      print(e);
      if (e is FirebaseAuthException) {
        showMessage(e);
      }
    }
  }
}
