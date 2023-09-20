import 'package:flutter/material.dart';
import 'package:flutter_application_1/privatechat.dart';



class Messages extends StatefulWidget {
  const Messages({ Key? key }) : super(key: key);

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
     return ListView(
      children: [
        SizedBox(
          height: 10,
        ),
        Card(
          elevation: 3,
          child: ListTile(
            onTap: () {
              Route route =
                  MaterialPageRoute(builder: (context) => Privatechat());
              Navigator.push(context, route);
            },
            leading: CircleAvatar( radius: 25),
            title: Text('Jane'),
            subtitle: Text('awkokawoawkoawkaowkwo'),
            trailing: Icon(
              Icons.call,
              color: Colors.green,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Card(
          elevation: 3,
          child: ListTile(
            onTap: () {Route route =
                  MaterialPageRoute(builder: (context) => Privatechat());
              Navigator.push(context, route);},
            leading: CircleAvatar( radius: 25,),
            title: Text('Jeff'),
            subtitle: Text('awkokawoawkoawkaowkwo'),
            trailing: Icon(
              Icons.call,
              color: Colors.green,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Card(
          elevation: 3,
          child: ListTile(
            onTap: () {Route route =
                  MaterialPageRoute(builder: (context) => Privatechat());
              Navigator.push(context, route);},
            leading: CircleAvatar( radius: 25,),
            title: Text('GIGACHAD'),
            subtitle: Text('awkokawoawkoawkaowkwo'),
            trailing: Icon(
              Icons.call,
              color: Colors.green,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Card(
          elevation: 3,
          child: ListTile(
            onTap: () {Route route =
                  MaterialPageRoute(builder: (context) => Privatechat());
              Navigator.push(context, route);},
            leading: CircleAvatar( radius: 25,),
            title: Text('Ricardo Milos'),
            subtitle: Text('awkokawoawkoawkaowkwo'),
            trailing: Icon(
              Icons.call,
              color: Colors.green,
            ),
          ),
        ),
      ],
    );
  }
}