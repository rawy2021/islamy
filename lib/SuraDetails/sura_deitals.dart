import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_v1/tabs/verse.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = 'SuraDetails';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (verses.length == 0) loadfile('${args.index + 1}');
    return Stack(
      children: [
        Image.asset(
          'assets/images/main_background.png',
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
              centerTitle: true,
              title: Text(
                args.SuraName,
                style:
                    //TextStyle(color: Colors.black ,fontSize: 45 ,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                    Theme.of(context).textTheme.headline1,
                textAlign: TextAlign.center,
              )),
          body: verses.length == 0
              ? CircularProgressIndicator()
              : ListView.separated(
                  itemBuilder: (_, index) {
                    return ItemVerse(verses[index], index + 1);
                  },
                  separatorBuilder: (buildContext, index) {
                    return Container(
                      color: Theme.of(context).primaryColor,
                      height: 1,
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 24),
                    );
                  },
                  itemCount: verses.length,
                ),
        ),
      ],
    );
  }

  void loadfile(String fileName) async {
    String fileContent =
        await rootBundle.loadString('assets/fills/$fileName.txt');
    List<String> verses = fileContent.split('\n');
    this.verses = verses;
    setState(() {});
    print(verses);
  }
}

class SuraDetailsArgs {
  String SuraName;
  int index;

  SuraDetailsArgs({required this.SuraName, required this.index});
}
