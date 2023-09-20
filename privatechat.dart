import 'package:flutter/material.dart';

class Privatechat extends StatefulWidget {
  const Privatechat({ Key? key }) : super(key: key);

  @override
  State<Privatechat> createState() => _PrivatechatState();
}

class _PrivatechatState extends State<Privatechat> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: ThemeData(
            appBarTheme: AppBarTheme(
                color: Color(0xff312227),
                titleTextStyle:
                    TextStyle(color: Color(0xffCF5A27), fontSize: 20,fontFamily: 'nunito')),
            brightness: Brightness.light,
            scaffoldBackgroundColor: const Color(0xff312227),
            textTheme: Theme.of(context).textTheme.apply(
                bodyColor: const Color(0xffCF5A27),
                displayColor: const Color(0xffCF5A27)),
            hintColor: const Color(0xffCF5A2f),
            listTileTheme:ListTileThemeData(tileColor:  Color(0xffeed3c1)) ),
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
                
              },
              icon: Icon(
                Icons.arrow_back,
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Jane'),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                    radius: 25,
                    )
              ],
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.call,
                  color:  Color(0xffCF5A27),
                ),
                onPressed: () {
                  // do something
                },
              )
            ],
          ),
          body: SingleChildScrollView(),
          bottomNavigationBar: Container(
            padding: MediaQuery.of(context).viewInsets,
            color:Color(0xffeed3c1),
            child: Container(
              margin: EdgeInsets.all(15.0),
              height: 61,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35.0),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 3),
                              blurRadius: 1,
                              color: Colors.white)
                        ],
                      ),
                      child: Row(
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.emoji_emotions,
                                color: Color(0xffCF5A27),
                              ),
                              onPressed: () {}),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Type Something...",
                                  hintStyle: TextStyle(
                                      ),
                                  border: InputBorder.none),
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.photo_camera,
                                color:  Color(0xffCF5A27)),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.attach_file,
                                color:  Color(0xffCF5A27)),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Container(
                    padding: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                        color: Color(0xffCF5A27),
                        shape: BoxShape.circle),
                    child: InkWell(
                      child: Icon(
                        Icons.keyboard_voice,
                        color: Colors.white,
                      ),
                      onLongPress: () {},
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}