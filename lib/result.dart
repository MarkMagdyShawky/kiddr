// ignore_for_file: use_super_parameters
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taweret/componants/showdata.dart';
import 'package:taweret/componants/MyDrawer.dart';
import 'package:taweret/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
class result extends StatefulWidget {
  final Map<String, dynamic> apiresult;
  const result(this.apiresult, {Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _resultState();
}

// ignore: non_constant_identifier_names
class _resultState extends State<result> {
  late Map<String, dynamic> data;
  @override
  void initState() {
    data = widget.apiresult;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Result'),
      ),
      drawer: MyDrawer(),
      body: ListView(children: [
        Container(
          width: 300,
          height: 300,
          child: Image(
            image: AssetImage(
              "assets/resultpic.png",
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(15),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
<<<<<<< HEAD
                showdata(field: "${data['name']}", data: 'You may have: '),
                showdata(field: "${data['description']}", data: 'Description: '),
                showdata(field: "${data['symptoms']}", data: 'Symptoms: '),
                showdata(field: "${data['treatment']}", data: 'We suggest you to do: '),
=======
                showdata(field: "${data['name']}", data: S.of(context).ResultMayHave), //ResultMayHave
                showdata(field: "${data['description']}", data: S.of(context).ResultDescription), //ResultDescription
                showdata(field: "${data['symptoms']}", data: S.of(context).ResultSymptoms), //ResultSymptoms
                showdata(field: "${data['treatment']}", data: S.of(context).ResultSuggest), //ResultSuggest
>>>>>>> e0aa06ff8f1b5ac39105b75bd06de64a1eec92c6
              ]),
        ),
      ]),
    );
  }
}
