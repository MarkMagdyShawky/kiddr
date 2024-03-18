import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taweret/componants/constants.dart';
import 'package:taweret/questions.dart';
import 'generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyGetStartPage extends StatelessWidget {
  MyGetStartPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 113, 118, 255),
      backgroundColor: kBackgroundColor2,
      // appBar: AppBar(
      //   backgroundColor: Color.fromARGB(255, 113, 118, 255),
      //   elevation: 0,
      // ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    child: SvgPicture.asset("assets/15.svg"),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
<<<<<<< HEAD
                    child: const Text(
                      "Your love and care are the greatest gifts you can give your baby.",
=======
                    child:  Text(
                      S.of(context).GetStartedMessage, //GetStartedMessage
>>>>>>> e0aa06ff8f1b5ac39105b75bd06de64a1eec92c6
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 22, 24, 46),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Center(
                    child: Container(
                        height: 60,
                        width: 300,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 255, 255, 255)),
                            //====================================== result page
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) => MyQuestionsPage()));
                            },
                            child:  Text(
                              S.of(context).GetStarted, //GetStarted
                              style: TextStyle(
                                fontSize: 25,
                                color: Color.fromARGB(255, 113, 118, 255),
                              ),
                            ))),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
