import 'package:firebase_auth/firebase_auth.dart';
import 'package:taweret/Login.dart';
import 'package:taweret/LoginSiginupComponants/LoginSignupFooter.dart';
import 'package:taweret/LoginSiginupComponants/LoginSignupHeader.dart';
import 'package:taweret/componants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:taweret/home.dart';
import 'package:taweret/onbording_screen.dart';
import 'generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MySignupPage extends StatefulWidget {
  const MySignupPage({key});

  @override
  State<MySignupPage> createState() => _MySignupPageState();
}

class _MySignupPageState extends State<MySignupPage> {
  final formKey = GlobalKey<FormState>();
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    MyLoginPage _createMyLoginPage() => MyLoginPage();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(24),
        child: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            LoginSignupHeader(
<<<<<<< HEAD
              pageTitle: "Sign up",
              imageLocation: "assets/login.svg",
              subtitle: "Create new account",
=======
              pageTitle: S.of(context).MyHomeLogin,
              imageLocation: "assets/login.svg",
              subtitle: S.of(context).SignupCreateAccount, //SignupCreateAccount
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
              question: "Already have account? ",
              nextPage: _createMyLoginPage,
              btnName: "Login",
=======
              question: S.of(context).SignUpAlreadyHaveAccount, //SignUpAlreadyHaveAccount
              nextPage: _createMyLoginPage,
              btnName: S.of(context).MyHomeLogin,
>>>>>>> e0aa06ff8f1b5ac39105b75bd06de64a1eec92c6
            )
          ],
        ),
      ),
    );
  }

// ////////////////////////////////////////////////
  _inputs(context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: username,
              decoration: InputDecoration(
                hintText: S.of(context).SignUpUsernameHint, //SignUpUsernameHint
                prefixIcon: Icon(
                  Icons.person,
                  color: kPrimaryColor,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                fillColor: kPrimaryColor.withAlpha(50),
                filled: true,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return S.of(context).SignUpUsernameEmpty; //SignUpUsernameEmpty
                }
                return null;
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: email,
              decoration: InputDecoration(
                hintText: S.of(context).LoginEmailHint, //email
                prefixIcon: Icon(
                  Icons.email,
                  color: kPrimaryColor,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                fillColor: kPrimaryColor.withAlpha(50),
                filled: true,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return S.of(context).LoginEmailCheck; //please enter your email
                }
                return null;
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              obscureText: true,
              controller: password,
              decoration: InputDecoration(
                hintText: S.of(context).LoginPasswordHint, //password
                prefixIcon: Icon(
                  Icons.lock,
                  color: kPrimaryColor,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                fillColor: kPrimaryColor.withAlpha(50),
                filled: true,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return S.of(context).LoginPasswordCheck; //please enter your password
                }
                return null;
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                try {
                  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                    email: email.text,
                    password: password.text,
                  );
                  setState(() {
                    AwesomeDialog(
                      btnOkIcon: CupertinoIcons.airplane,
                      showCloseIcon: true,
                      context: context,
                      dialogType: DialogType.success,
                      animType: AnimType.scale,
                      title: 'Sucessfully',
                      desc: S.of(context).SucessMessage,
                      btnOkOnPress: () {
                        Navigator.pushReplacement(
                            context, MaterialPageRoute(builder: (context) => OnBoardingScreen()));
                      },
                    ).show();
                  });
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'weak-password') {
                    setState(() {
                      AwesomeDialog(
                        btnOkIcon: CupertinoIcons.repeat,
                        showCloseIcon: true,
                        context: context,
                        dialogType: DialogType.warning,
                        animType: AnimType.scale,
                        title: 'Again',
                        desc: S.of(context).SignUpWeakPass, //SignUpWeakPass
                        btnOkOnPress: () {},
                      ).show();
                    });
                    print(S.of(context).SignUpWeakPass); //SignUpWeakPass
                  } else if (e.code == 'email-already-in-use') {
                    setState(() {
                      AwesomeDialog(
                        btnOkIcon: CupertinoIcons.airplane,
                        showCloseIcon: true,
                        btnOkText: S.of(context).MyHomeLogin,
                        btnCancelText: S.of(context).TryAgain, //TryAgain
                        context: context,
                        dialogType: DialogType.warning,
                        animType: AnimType.scale,
                        title: 'Alert',
                        desc: S.of(context).SignUpAlreadyExists, //SignUpAlreadyExists
                        btnOkOnPress: () {
                          Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (context) => MyLoginPage()));
                        },
                        btnCancelOnPress: () {},
                      ).show();
                    });
                    print(S.of(context).SignUpAlreadyExists);//SignUpAlreadyExists
                  } else {
                    setState(() {
                      AwesomeDialog(
                        btnOkIcon: CupertinoIcons.repeat,
                        showCloseIcon: true,
                        context: context,
                        dialogType: DialogType.error,
                        animType: AnimType.scale,
                        title: 'Alert',
                        desc: S.of(context).SomethingWrong, //SomethingWrong
                        btnOkOnPress: () {},
                      ).show();
                    });
                  }
                } catch (e) {
                  print(e);
                }
              }
            },
            color: kPrimaryColor,
            padding: EdgeInsets.only(top: 10, bottom: 10, right: 90, left: 90),
            height: 30,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
            child:  Text(
              S.of(context).MyHomeSignUp,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
