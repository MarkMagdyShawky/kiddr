import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../generated/l10n.dart'; 


class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

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
                  child: SvgPicture.asset("assets/t.svg"),
                  height: 380,
                ),
                Container(
<<<<<<< HEAD
                  child: const Text(
                    "Kidder Service",
=======
                  child:  Text(
                    S.of(context).IntroScreen2text1, //IntroScreen2text1
>>>>>>> e0aa06ff8f1b5ac39105b75bd06de64a1eec92c6
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Container(
                    child: Text(
<<<<<<< HEAD
                      "  we are here to help you 24/7our children’s health is important ",
=======
                     S.of(context).IntroScreen2text2, //IntroScreen2text2
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
