import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/loadingscreen.dart';
import 'package:flutter_application_1/provider/switch_provider.dart';
import 'package:flutter_application_1/theme_data.dart';

import 'package:provider/provider.dart';
import 'provider/bottomprovider.dart';
import 'provider/chipprovider.dart';
import 'provider/favprovider.dart';
import 'provider/textfieldprovider.dart';
import 'provider/txtfieldregistrasi.dart';
import 'provider/validprovider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  SwitchProvider themeChangeProvider = SwitchProvider();

  void getCurrentAppTheme() async {
    themeChangeProvider.setEnableSwitch =
        await themeChangeProvider.darkThemePreferences.getTheme();
  }

  void initState() {
    getCurrentAppTheme();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
          create: (context) => BottomNavigationBarProvider()),
      ChangeNotifierProvider(create: (context) => txtprovider()),
      ChangeNotifierProvider(create: (context) => TxtFieldRegistrasi()),
      ChangeNotifierProvider(create: (context) => ValidProvider()),
      ChangeNotifierProvider(create: (context) => ValidProvider()),
      ChangeNotifierProvider(create: (context) => Favprovider()),
      ChangeNotifierProvider(create: (context) => ChoiceChipFdbck()),
      ChangeNotifierProvider(create: (context) => SwitchProvider()),
      ChangeNotifierProvider(create: (_) {
        return themeChangeProvider;
      })
    ],child:Consumer<SwitchProvider>(builder: (context, themeData, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          
          theme: Styles.themeData(themeChangeProvider.getEnableSwitch, context),
          home: const LoadingPage(),
        );
      }), 
    );
  }
}
