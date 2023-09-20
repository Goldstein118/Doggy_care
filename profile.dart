import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/switch_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/loginscreen.dart';


import 'feedback.dart';
import 'mypets.dart';


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<SwitchProvider>(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                    image: DecorationImage(
                      image: AssetImage('assets/BMI.jpg'),
                      fit: BoxFit.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  'Abdul',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
              )
            ],
          ),
          Card(
            elevation: 5,
            child: ListTile(
              onTap: () {
                 Route route =
                  MaterialPageRoute(builder: (context) =>Mypets());
              Navigator.push(context, route);
              },
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/guide-dog 1.png'),
                backgroundColor: Color(0xffeed3c1),
              ),
              title: Text('Mypets'),
            ),
          ),
          Card(
            elevation: 5,
            child: ListTile(
              leading: Icon(
                Icons.mail,
                color: Color(0xffCF5A27),
              ),
              title: Text('abdul.abdulah@gmail.com'),
            ),
          ),
          Card(
            elevation: 5,
            child: ListTile(
              leading: Icon(
                Icons.call,
                color: Color.fromARGB(255, 0, 255, 21),
              ),
              title: Text('+62234512345678'),
            ),
          ),
          Card(
            elevation: 5,
            child: ListTile(
              onTap: () {
                 Route route =
                  MaterialPageRoute(builder: (context) =>FeedbackScreen());
              Navigator.push(context, route);
              },
              leading:CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/Chat_alt_2_fill.png'),
                backgroundColor: Color(0xffeed3c1),
              ),
              title: Text('Feedback'),
            ),
          ),
          SizedBox(height: 5,),
          Card(
            elevation: 5,
            child: SwitchListTile(
              title: Text('Dark Mode'),
              secondary: Icon(Icons.dark_mode),
              value: themeChange.getEnableSwitch,
              onChanged: (value) {
                themeChange.setEnableSwitch = value;

              },
            )),
          Container( width: 150,height: 60,
            child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 255, 0, 0)),
              onPressed: () {
                FirebaseAuth.instance.signOut();
                Route route =
                  MaterialPageRoute(builder: (context) =>LoginPage());
              Navigator.push(context, route);
              
              },
              child: Text('LOGOUT'),
            ),
          ),
          SizedBox(height: 15,)
        ],
      ),
    );
  }
   
}
