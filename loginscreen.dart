
import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'auth.dart';
  Stream<int> generateNumbers = (() async* {
    await Future<void>.delayed(Duration(seconds: 2));
  
    for (int i = 1; i <= 5; i++) {
      await Future<void>.delayed(Duration(seconds: 1));
      yield i;
    }
  })();
class BuilderStream extends StatefulWidget {
  const BuilderStream({super.key});

  @override
  State<BuilderStream> createState() => _BuilderStreamState();
}

class _BuilderStreamState extends State<BuilderStream> {
  @override
  initState() {
      super.initState();
    }
    @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Center(
            child: StreamBuilder<int>(
              stream: generateNumbers,
              initialData: 0,
              builder: (
                BuildContext context,
                AsyncSnapshot<int> snapshot,
              ) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return 
                      CircularProgressIndicator();
                } else if (snapshot.connectionState == ConnectionState.active
                    || snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasError) {
                    return const Text('Error');
                  } else if (snapshot.hasData) {
                    return Home();
                  } else {
                    return const Text('Empty data');
                  }
                } else {
                  return Text('State: ${snapshot.connectionState}');
                }
              },
            ),
          ),
        ),
      );
  }
}

class LoginPage extends StatefulWidget {
 LoginPage({Key? key}) : super(key: key);
  
  @override
  State<LoginPage> createState() => _LoginPageState();}

class _LoginPageState extends State<LoginPage> {
  late AuthFirebase auth;
  
  @override
  void initState() {
    auth = AuthFirebase();
    auth.getUser().then((value) {
      MaterialPageRoute route;
      if (value != null) {
        route = MaterialPageRoute(builder: (context) => BuilderStream());
        Navigator.pushReplacement(context, route);
      }
    }).catchError((err) => print(err));
  
}
  TextEditingController Emailcontroller = TextEditingController();
  TextEditingController Passcontroller = TextEditingController();

  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'Doggy Care',
      logo: AssetImage('assets/doggycare.png'),                
      theme: LoginTheme(primaryColor: Color.fromARGB(255, 53, 35, 29),
      accentColor: Color(0xffCF5A27),
      cardTheme: CardTheme(
          color: Color(0xffeed3c1),
          elevation: 5,
          margin: EdgeInsets.only(top: 15),
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(100.0)),
        ),
        
         buttonTheme: LoginButtonTheme(
          splashColor: Colors.purple,
          backgroundColor: Colors.pinkAccent,
          highlightColor: Colors.lightGreen,
          elevation: 9.0,
          highlightElevation: 6.0,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          
          ),
           inputTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.purple.withOpacity(.1),
          contentPadding: EdgeInsets.zero,
          errorStyle: TextStyle(
            backgroundColor: Colors.orange,
            color: Colors.white,
          ),)
          
        
        ) ,
      onLogin: _loginUser,
      onRecoverPassword: _recoverPassword,
      onSignup: _onSignup,
      passwordValidator: (value) {
        if (value != null) {
          if (value.length < 6) {
            return "Password Must Be 6 Characters";
          }
        }
      },
      loginProviders: <LoginProvider>[
        LoginProvider(
          icon: FontAwesomeIcons.google,
          label: 'Google',
          callback: _onLoginGoogle,
        ),
      ],
      onSubmitAnimationCompleted: () {
        auth.getUser().then((value) {
          MaterialPageRoute route;

          if (value != null) {
            route =
                MaterialPageRoute(builder: (context) =>BuilderStream());
          } else {
            route = MaterialPageRoute(builder: ((context) => LoginPage()));
          }
          Navigator.pushReplacement(context, route);
        }).catchError((err) => print(err));
      },
    );
  }

  Future<String?>? _loginUser(LoginData data) {
    return auth.login(data.name, data.password).then((value) {
      if (value != null) {
        MaterialPageRoute(builder: ((context) => BuilderStream()));
      } else {
        final snackBar = SnackBar(
          content: const Text('Login Failed, User Not Found'),
          action: SnackBarAction(
            label: 'OK',
            onPressed: () {},
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => LoginPage()));
      }
    });
  }

  Future<String?>? _recoverPassword(String name) {
    return null;
  }

  Future<String?>? _onSignup(SignupData data) {
    return auth.signUp(data.name!, data.password!).then((value) {
      if (value != null) {
        final snackBar = SnackBar(
          content: const Text('Sign Up Successful'),
          action: SnackBarAction(
            label: 'OK',
            onPressed: () {},
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    });
  }
 
  Future<String?>? _onLoginGoogle() {
    return null;
  }
}



  
