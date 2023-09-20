
import 'package:flutter/material.dart';

import 'penyakit/penyakit.dart';
import 'penyakit/penyakit2.dart';
import 'penyakit/penyakit3.dart';
import 'penyakit/penyakit4.dart';
import 'penyakit/penyakit5.dart';


class HasilDiagnosa extends StatelessWidget {
  const HasilDiagnosa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              color: Color(0xff312227),
              titleTextStyle: TextStyle(
                  color: Color(0xffCF5A27),
                  fontSize: 20,
                  fontFamily: 'nunito')),
          brightness: Brightness.light,
          scaffoldBackgroundColor: const Color(0xff312227),
          textTheme: Theme.of(context).textTheme.apply(
              bodyColor: const Color(0xffCF5A27),
              displayColor: const Color(0xffCF5A27)),
          hintColor: const Color(0xffCF5A2f),
          listTileTheme: ListTileThemeData(tileColor: Color(0xffeed3c1))),
      home: Scaffold(
        appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back)),
            title: const Text("Kemungkinan Penyakit",
                style: TextStyle(fontWeight: FontWeight.bold)),
            centerTitle: true,
            backgroundColor: Color(0xff312227)),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  shadowColor: Color(0xffCF5A27),
                  elevation: 15,
                  child: ClipPath(
                    clipper: ShapeBorderClipper(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide(
                                color: Color(0xffCF5A27), width: 10)),
                        color: Color(0xffeed3c1),
                      ),
                      padding: EdgeInsets.all(10.0),
                      child: ListTile(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return CanineDistemper();
                          }));
                        },
                        leading: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage('assets/caninedistemper.jpg')),
                        title: Text(
                          'Canine Distemper',
                          style: TextStyle(
                              color: Color(0xffCF5A27),
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          'is caused by a very contagious virus,',
                          style: TextStyle(
                              color: Color(0xff312227),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  shadowColor: Color(0xffCF5A27),
                  elevation: 15,
                  child: ClipPath(
                    clipper: ShapeBorderClipper(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide(
                                color: Color(0xffCF5A27), width: 10)),
                        color: Color(0xffeed3c1),
                      ),
                      padding: EdgeInsets.all(10.0),
                      child: ListTile(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return VirusParvo();
                          }));
                        },
                        leading: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage('assets/virusparvo.jpg')),
                        title: Text(
                          'Canine ParvoVirus',
                          style: TextStyle(
                              color: Color(0xffCF5A27),
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          'is a highly contagious virus that can affect all dogs,',
                          style: TextStyle(
                              color: Color(0xff312227),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  shadowColor: Color(0xffCF5A27),
                  elevation: 15,
                  child: ClipPath(
                    clipper: ShapeBorderClipper(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide(
                                color: Color(0xffCF5A27), width: 10)),
                        color: Color(0xffeed3c1),
                      ),
                      padding: EdgeInsets.all(10.0),
                      child: ListTile(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return LeptoSpirosis();
                          }));
                        },
                        leading: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage('assets/leptospirosis.jpg')),
                        title: Text(
                          'Leptospirosis',
                          style: TextStyle(
                              color: Color(0xffCF5A27),
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          'infeksi bakteri zoonosis yang disebarkan oleh tikus,',
                          style: TextStyle(
                              color: Color(0xff312227),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  shadowColor: Color(0xffCF5A27),
                  elevation: 15,
                  child: ClipPath(
                    clipper: ShapeBorderClipper(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide(
                                color: Color(0xffCF5A27), width: 10)),
                        color: Color(0xffeed3c1),
                      ),
                      padding: EdgeInsets.all(10.0),
                      child: ListTile(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return PenyakitLyme();
                          }));
                        },
                        leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('assets/lyme.jpg')),
                        title: Text(
                          'Penyakit Lyme',
                          style: TextStyle(
                              color: Color(0xffCF5A27),
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          'disebabkan oleh bakteri yang berasal dari gigitan kutu,',
                          style: TextStyle(
                              color: Color(0xff312227),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  shadowColor: Color(0xffCF5A27),
                  elevation: 15,
                  child: ClipPath(
                    clipper: ShapeBorderClipper(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide(
                                color: Color(0xffCF5A27), width: 10)),
                        color: Color(0xffeed3c1),
                      ),
                      padding: EdgeInsets.all(10.0),
                      child: ListTile(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Hepatitis();
                          }));
                        },
                        leading: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage('assets/hepatitis.jpg')),
                        title: Text(
                          'Hepatitis',
                          style: TextStyle(
                              color: Color(0xffCF5A27),
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          'disebabkan oleh virus "anine Adeno Virus-1(CAV-1)", ',
                          style: TextStyle(
                              color: Color(0xff312227),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
