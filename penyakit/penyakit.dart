import 'package:flutter/material.dart';

class CanineDistemper extends StatelessWidget {
  const CanineDistemper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 360,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/caninedistemper.jpg'),
                        fit: BoxFit.cover)),
              )),
          Positioned(
              left: 5,
              top: 20,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.cancel),
                    iconSize: 40,
                    color: Colors.grey[400],
                  )
                ],
              )),
          Positioned(
              top: 330,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                      color: Color(0xff312227),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Canine Distemper',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(
                        color: Color(0xffCF5A27),
                        height: 20,
                        thickness: 5,
                        indent: 25,
                        endIndent: 25,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25, right: 25, top: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Canine distemper is a contagious and serious disease caused by a virus that attacks the respiratory, gastrointestinal and nervous systems of puppies and dogs.',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'The virus can also be found in wildlife such as foxes, wolves, coyotes, raccoons, skunks, mink and ferrets and has been reported in lions, tigers, leopards and other wild cats as well as seals.',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ],
                  )))
        ],
      ),
    ));
  }
}
