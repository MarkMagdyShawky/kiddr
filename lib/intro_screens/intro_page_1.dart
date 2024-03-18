import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../generated/l10n.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  child: SvgPicture.asset("assets/x.svg"),
                  height: 380,
                ),
                Container(
                  child: Text(
<<<<<<< HEAD
                    "Welcome to Kidder!",
=======
                    S.of(context).IntroScreenWelcome , // IntroScreenWelcome 
>>>>>>> e0aa06ff8f1b5ac39105b75bd06de64a1eec92c6
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
<<<<<<< HEAD
                    child: const Text(
                      "Kidder is your personal guide to understanding your child's health. Our expert system utilizes advanced algorithms to assess symptoms and provide accurate diagnoses and treatment recommendations.",
=======
                    child: Text( // IntroScreenQuote 
                      S.of(context).IntroScreenQuote,
>>>>>>> e0aa06ff8f1b5ac39105b75bd06de64a1eec92c6
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
