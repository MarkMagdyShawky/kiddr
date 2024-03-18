import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taweret/LoginSiginupComponants/LoginSignupFooter.dart';
import 'package:taweret/Signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taweret/LoginSiginupComponants/LoginSignupHeader.dart';
import 'package:taweret/componants/constants.dart';

import 'package:taweret/onbording_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<MyLoginPage> {
  GlobalKey<FormState> formState = GlobalKey();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  //////****Login With Google Account*******/////
  Future signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
    if (googleUser == null) {
      return; // if user enter null value or cancel login will get out
    }
    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    await FirebaseAuth.instance.signInWithCredential(credential);
    // if login success show diagonal from package
    setState(() {
      AwesomeDialog(
        btnOkIcon: CupertinoIcons.airplane,
        showCloseIcon: true,
        context: context,
        dialogType: DialogType.success,
        animType: AnimType.scale,
        title: 'Sucessfully', 
        desc: S.of(context).SucessMessage ,// SucessMessage 
        btnOkOnPress: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnBoardingScreen()));
        },
      ).show();
    });
  }

// /////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    MySignupPage _createMyLoginPage() => MySignupPage();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(24),
        child: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            LoginSignupHeader(
<<<<<<< HEAD
              pageTitle: "Welcome Back",
              imageLocation: "assets/login6.svg",
              subtitle: "Enter your data to Login",
=======
              pageTitle: S.of(context).LoginWelcome, //LoginWelcome
              imageLocation: "assets/login6.svg",
              subtitle: S.of(context).LoginSubtitle, //LoginSubtitle
>>>>>>> e0aa06ff8f1b5ac39105b75bd06de64a1eec92c6
            ),
            const SizedBox(
              height: 20,
            ),
            _inputs(context),
            const SizedBox(
              height: 20,
            ),
            LoginSignupFooter(
<<<<<<< HEAD
              question: "Don't have an account?",
              nextPage: _createMyLoginPage,
              btnName: "Sign Up",
=======
              question: S.of(context).LoginNoAccount, // LoginNoAccount
              nextPage: _createMyLoginPage,
              btnName: S.of(context).MyHomeSignUp, //myhome signup
>>>>>>> e0aa06ff8f1b5ac39105b75bd06de64a1eec92c6
            )
          ],
        ),
      ),
    );
  }

// //////////////////////////////////////
  _inputs(context) {
    return Form(
      key: formState,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: email,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return S.of(context).LoginEmailCheck; //LoginEmailCheck
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: S.of(context).LoginEmailHint, //LoginEmailHint
                prefixIcon: const Icon(
                  Icons.email,
                  color: kPrimaryColor,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none,
                ),
                fillColor: kPrimaryColor.withAlpha(50),
                filled: true,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: password,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return S.of(context).LoginPasswordCheck;// LoginPasswordCheck
                }
                return null;
              },
              obscureText: true,
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                hintText: S.of(context).LoginPasswordHint, //LoginPasswordHint
                prefixIcon: const Icon(
                  Icons.lock,
                  color: kPrimaryColor,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none,
                ),
                fillColor: kPrimaryColor.withAlpha(50),
                filled: true,
              ),
            ),
          ),

          InkWell(
            onTap: () async {
              if (email.text == "") {
                setState(() {
<<<<<<< HEAD
                  _showErrorDialog(context, "Enter Your Email First");
=======
                  _showErrorDialog(context, S.of(context).LoginEmailEMpty); //LoginEmailEMpty
>>>>>>> e0aa06ff8f1b5ac39105b75bd06de64a1eec92c6
                });
                return;
              }

              try {
                await FirebaseAuth.instance.sendPasswordResetEmail(email: email.text);
                setState(() {
<<<<<<< HEAD
                  _showInfoDialog(context, 'Reset Password', 'Check your email and reset your passowrd.');
=======
                  _showInfoDialog(context, S.of(context).LoginResetpass, S.of(context).LoginResetpass); //LoginResetpass LoginResetEmail
>>>>>>> e0aa06ff8f1b5ac39105b75bd06de64a1eec92c6
                });
              } on FirebaseAuthException catch (e) {
                _showErrorDialog(context, e.message.toString());
              }
            },
            child: Container(
              margin: EdgeInsets.only(right: 20),
              alignment: Alignment.topRight,
              child: Text(
<<<<<<< HEAD
                "Forget Password?",
=======
                S.of(context).LoginForgetPass, //LoginForgetPass
>>>>>>> e0aa06ff8f1b5ac39105b75bd06de64a1eec92c6
              ),
            ),
          ),

          const SizedBox(
            height: 30,
          ),

          // btn
          MaterialButton(
            // btn on pressed
            onPressed: () async {
              if (formState.currentState!.validate()) {
                try {
                  final credential = await FirebaseAuth.instance
                      .signInWithEmailAndPassword(email: email.text, password: password.text);
                  setState(() {
                    _showSuccessDialog(context);
                  });
                } on FirebaseAuthException catch (e) {
                  setState(() {
<<<<<<< HEAD
                    _showErrorDialog(context, 'Wronge Email or Password');
=======
                    _showErrorDialog(context, S.of(context).LoginWrongPass);// LoginWrongPass
>>>>>>> e0aa06ff8f1b5ac39105b75bd06de64a1eec92c6

                    print("===================${e.code}");
                  });
                }
              }
            },
            color: kPrimaryColor,
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            height: 30,
            minWidth: 255,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
            child:  Text(
              S.of(context).MyHomeLogin,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),

          const SizedBox(
            height: 20,
          ),
          // //////////////////////////////////
          MaterialButton(
            // btn on pressed
            onPressed: () {
              signInWithGoogle();
            },
            color: Color.fromARGB(255, 255, 118, 108),
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            height: 30,
            minWidth: 255,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
<<<<<<< HEAD
                const Text(
                  "Continue With Google ",
=======
                 Text(
                  S.of(context).LoginContinueWithGoogle, //LoginContinueWithGoogle
>>>>>>> e0aa06ff8f1b5ac39105b75bd06de64a1eec92c6
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                SvgPicture.asset(
                  "assets/Google.svg",
                  width: 30,
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showSuccessDialog(BuildContext context) {
    AwesomeDialog(
      btnOkIcon: CupertinoIcons.airplane,
      showCloseIcon: true,
      context: context,
      dialogType: DialogType.success,
      animType: AnimType.scale,
      title: 'Successfully',
<<<<<<< HEAD
      desc: 'Login Successfully',
=======
      desc: S.of(context).SucessMessage, //SucessMessage 
>>>>>>> e0aa06ff8f1b5ac39105b75bd06de64a1eec92c6
      btnOkOnPress: () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnBoardingScreen()));
      },
    ).show();
  }

  void _showInfoDialog(BuildContext context, String infoTitle, String infoMessage) {
    AwesomeDialog(
      btnOkIcon: CupertinoIcons.airplane,
      showCloseIcon: true,
      context: context,
      dialogType: DialogType.info,
      animType: AnimType.scale,
      title: '$infoTitle',
      desc: '$infoMessage',
      btnOkOnPress: () {},
    ).show();
  }

  void _showErrorDialog(BuildContext context, String errorMessage) {
    AwesomeDialog(
      btnOkIcon: CupertinoIcons.repeat,
      showCloseIcon: true,
      context: context,
      dialogType: DialogType.error,
      animType: AnimType.scale,
      title: 'Error',
      desc: errorMessage,
      btnOkOnPress: () {},
    ).show();
  }
}
