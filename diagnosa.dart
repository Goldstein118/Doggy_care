


import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../provider/validprovider.dart';
import 'hasil_diagnosa.dart';


class DiagnosaScreen extends StatefulWidget {
  const DiagnosaScreen({Key? key}) : super(key: key);

  @override
  State<DiagnosaScreen> createState() => _DiagnosaScreenState();
}

class _DiagnosaScreenState extends State<DiagnosaScreen> {
  List breed = [
    'affenpinscher',
    'Afghan hound',
    'Airedale terrier',
    'Akita',
    'Alaskan Malamute',
    'American Staffordshire terrier',
    'American water spaniel',
    'Australian cattle dog',
    'Australian shepherd',
    'Australian terrier',
    'basenji',
    'basset hound',
  ];
  TextEditingController Umurcontroller = TextEditingController();
  TextEditingController Tinggicontroller = TextEditingController();
  TextEditingController Gejalacontroller = TextEditingController();
  TextEditingController Alergicontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var myProvider1 = Provider.of<ValidProvider>(context);
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
            leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back)),
            title: const Text("Diagnosis Penyakit",
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
                Text(
                  'Dog Breed',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    color: Color(0xffCF5A27),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                DropdownButtonFormField(
                  items: breed
                      .map((e) => DropdownMenuItem(
                            child: Text(e),
                            value: e,
                          ))
                      .toList(),
                  onChanged: (Object? value) {},
                  decoration: InputDecoration(
                    label: const Text(
                      'Select Your Dog Breed',
                      style: TextStyle(color: Color(0xffCF5A27)),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(color: Color(0xffCF5A27)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Color(0xffCF5A27)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Gender',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    color: Color(0xffCF5A27),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 150,
                      height: 60,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: Color(0xffCF5A27))),
                          onPressed: () {},
                          child: const Text(
                            'Male',
                            style: TextStyle(
                                color: Color(0xffCF5A27), fontSize: 20),
                          )),
                    ),
                    SizedBox(
                      width: 150,
                      height: 60,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: Color(0xffCF5A27))),
                          onPressed: () {},
                          child: const Text(
                            'Female',
                            style: TextStyle(
                                color: Color(0xffCF5A27), fontSize: 20),
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Umur',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    color: Color(0xffCF5A27),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: Umurcontroller,
                  decoration: InputDecoration(
                    errorText: myProvider1.getUmurEmpty == true
                        ? 'Umur Harus diisi!'
                        : null,
                    filled: true,
                    prefixStyle: TextStyle(
                        color: Color(0xffCF5A27), fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Color(0xffCF5A27)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Color(0xffCF5A27)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Tinggi',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    color: Color(0xffCF5A27),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: Tinggicontroller,
                  decoration: InputDecoration(
                    errorText: myProvider1.getTinggiEmpty == true
                        ? 'Tinggi Harus diisi!'
                        : null,
                    filled: true,
                    prefixStyle: TextStyle(
                        color: Color(0xffCF5A27), fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Color(0xffCF5A27)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Color(0xffCF5A27)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Gejala-Gejala',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    color: Color(0xffCF5A27),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: Gejalacontroller,
                  decoration: InputDecoration(
                    errorText: myProvider1.getGejalaEmpty == true
                        ? 'Gejala Harus diisi!'
                        : null,
                    filled: true,
                    prefixStyle: TextStyle(
                        color: Color(0xffCF5A27), fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Color(0xffCF5A27)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Color(0xffCF5A27)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Alergi/Riwayat Penyakit',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    color: Color(0xffCF5A27),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: Alergicontroller,
                  decoration: InputDecoration(
                    errorText: myProvider1.getAlergiEmpty == true
                        ? 'Alergi Harus diisi!'
                        : null,
                    filled: true,
                    prefixStyle: TextStyle(
                        color: Color(0xffCF5A27), fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Color(0xffCF5A27)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Color(0xffCF5A27)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                MaterialButton(
                  height: 40,
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  onPressed: () {
                    if (Umurcontroller.text.isEmpty) {
                      myProvider1.setIsUmurEmpty = !myProvider1.getUmurEmpty;
                    } else {
                      myProvider1.setIsUmurEmpty = false;
                    }
                    if (Tinggicontroller.text.isEmpty) {
                      myProvider1.setIsTinggiEmpty =
                          !myProvider1.getTinggiEmpty;
                    } else {
                      myProvider1.setIsTinggiEmpty = false;
                    }
                    if (Gejalacontroller.text.isEmpty) {
                      myProvider1.setIsGejalaEmpty =
                          !myProvider1.getGejalaEmpty;
                    } else {
                      myProvider1.setIsGejalaEmpty = false;
                    }
                    if (Alergicontroller.text.isEmpty) {
                      myProvider1.setIsAlergiEmpty =
                          !myProvider1.getAlergiEmpty;
                    } else {
                      myProvider1.setIsAlergiEmpty = false;
                    }
                    if (Umurcontroller.text.isNotEmpty &&
                        Tinggicontroller.text.isNotEmpty &&
                        Gejalacontroller.text.isNotEmpty &&
                        Alergicontroller.text.isNotEmpty) {
                      myProvider1.setIsUmurEmpty = false;
                      myProvider1.setIsTinggiEmpty = false;
                      myProvider1.setIsGejalaEmpty = false;
                      myProvider1.setIsAlergiEmpty = false;

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HasilDiagnosa();
                      }));
                    }
                  },
                  color: Color(0xffCF5A27),
                  child: Text(
                    'Diagnosis',
                    style: TextStyle(color: Colors.white, fontSize: 15),
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
