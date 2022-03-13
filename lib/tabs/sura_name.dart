import 'package:flutter/material.dart';
import 'package:islami_v1/SuraDetails/sura_deitals.dart';

class ItemSuraName extends StatelessWidget {
  String SuraName;
  int index;

  ItemSuraName(this.SuraName, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          SuraDetails.routeName,
          arguments: SuraDetailsArgs(SuraName: SuraName, index: index),
        );
      },
      child: Container(
        padding: EdgeInsets.all(12),
        child: Center(
          child: Text(
            SuraName,
            style: Theme.of(context).textTheme.subtitle1,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
