import 'package:flutter/material.dart';

class PenyakitLyme extends StatelessWidget {
  const PenyakitLyme({Key? key}) : super(key: key);

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
                        image: AssetImage('assets/lyme.jpg'),
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
                            'Penyakit Lyme',
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
                              'Penyakit Lyme itu adalah salah satu penyakit yang paling umum ditularkan oleh kutu Itu ada di seluruh dunia, tetapi hanya menyebabkan gejala pada sepuluh persen anjing yang terkena.',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Penyakit ini Ini disebabkan oleh bakteri yang disebut Borrelia burgdorferi dan itu terjadi ketika infeksi sederhana yang ditularkan oleh kutu ini berakhir, penyakit ini pada anjing, dengan karakteristik klinis yang akan menunjukkan kepada kita bahwa anjing kita menderita Penyakit Lyme, menjadi ketimpangan berulang karena radang sendi.',
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
