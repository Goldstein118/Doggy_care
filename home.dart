import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/switch_provider.dart';
import 'package:flutter_application_1/theme_data.dart';

import 'package:provider/provider.dart';

import '../provider/bottomprovider.dart';
import 'favorite.dart';
import 'messages.dart';
import 'pagehome.dart';
import 'profile.dart';

class Home extends StatefulWidget {


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  SwitchProvider themeChangeProvider = SwitchProvider();
  void getCurrentAppTheme() async {
    themeChangeProvider.setEnableSwitch =
        await themeChangeProvider.darkThemePreferences.getTheme();
  }

  @override
  void initState() {
    getCurrentAppTheme();
    super.initState();
  }

  final List _page = [
     Homepage(),
    const Messages(),
    const Favorite(),
    const Profile()
  ];

  String? email;
  final List _color = [
    const Color.fromARGB(255, 29, 20, 23),
    const Color(0xffeed3c1)
  ];

  final List _appbar = [
    AppBar(
      title: const Text("Hello,"),
    ),
    AppBar(
      title: const Text('Messages'),
    ),
    AppBar(
      title: const Text('Favorite'),
    ),
    AppBar(
      title: const Text('Profile'),
    )
  ];

  @override
  Widget build(BuildContext context) {
    var myprovider2 = Provider.of<BottomNavigationBarProvider>(context);
    var myprovider = Provider.of<SwitchProvider>(context);

    return Scaffold(
        appBar: _appbar[myprovider2.currentIndex],
        body: _page[myprovider2.currentIndex],
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.shifting,
              currentIndex: myprovider2.currentIndex,
              onTap: (i) {
                myprovider2.setcurrentIndex = i;
              }, // Shifting

              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Color(0xffCF5A27)),
                  label: 'Home',
                  backgroundColor:
                      myprovider.getEnableSwitch ? _color[0] : _color[1],
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.message, color: Color(0xffCF5A27)),
                  label: 'Messages',
                  backgroundColor:
                      myprovider.getEnableSwitch ? _color[0] : _color[1],
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite, color: Color(0xffCF5A27)),
                  label: 'Favorite',
                  backgroundColor:
                      myprovider.getEnableSwitch ? _color[0] : _color[1],
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.people,
                    color: Color(0xffCF5A27),
                  ),
                  label: 'Profile',
                  backgroundColor:
                      myprovider.getEnableSwitch ? _color[0] : _color[1],
                ),
              ],
            ),
          ),
        ));
  }
}
