import 'package:flutter/material.dart';
import 'package:islami_v1/tabs/Quran_Tab.dart';
import 'package:islami_v1/tabs/azkar_tab.dart';
import 'package:islami_v1/tabs/hadeth_tab.dart';
import 'package:islami_v1/tabs/radio_tab.dart';
import 'package:islami_v1/tabs/sebha_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int CurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/main_background.png',
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(
              'islam',
              style: Theme.of(context).textTheme.headline1,
              textAlign: TextAlign.center,
            )),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: CurrentIndex,
            onTap: (index) {
              CurrentIndex = index;
              setState(() {});
            },
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/quran.png')),
                label: 'quran',
                backgroundColor: Color.fromARGB(255, 183, 147, 95),
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/hadeth.png')),
                label: 'hadeth',
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/radio.png')),
                  label: 'radio'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                  label: 'sebha'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/6.png')),
                  label: 'azkar'),
            ],
          ),
          body: Tabs[CurrentIndex],
        ),
      ],
    );
  }

  var Tabs = [QuranTab(), HadethTab(), RadioTab(), SebhaTab(), AzkarTab()];
}
