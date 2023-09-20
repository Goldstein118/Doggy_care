import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../provider/validprovider.dart';
import 'hasilbmi.dart';





class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
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
  TextEditingController umur = TextEditingController();
  TextEditingController berat = TextEditingController();
  TextEditingController tinggi = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var myProvider1 = Provider.of<ValidProvider>(context);
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          colorScheme: const ColorScheme.light()
              .copyWith(primary: const Color(0xffCF5A27)),
          scaffoldBackgroundColor: const Color(0xff312227),
          textTheme: Theme.of(context).textTheme.apply(
              bodyColor: const Color(0xffCF5A27),
              displayColor: const Color(0xffCF5A27),
              fontFamily: 'nunito'),
          hintColor: const Color(0xffCF5A2f)),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Ideal Weight Calculator'),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: SingleChildScrollView(
            child: Column(children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Dog Breed'),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButtonFormField(
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
                      )),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Gender'),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            style: TextStyle(color: Color(0xffCF5A27)),
                          )),
                    ),
                    const SizedBox(
                      width: 70,
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
                          style: TextStyle(color: Color(0xffCF5A27)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Umur'),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: umur,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      errorText: myProvider1.getage == true
                          ? 'Umur Harus diisi!'
                          : null,
                      filled: true,
                      prefixStyle: TextStyle(
                          color: Color(0xffCF5A27),
                          fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffCF5A27)))),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Berat'),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: berat,
                  decoration: InputDecoration(
                      errorText: myProvider1.getweight == true
                          ? 'Umur Harus diisi!'
                          : null,
                      filled: true,
                      prefixStyle: TextStyle(
                          color: Color(0xffCF5A27),
                          fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(),
                      hintText: 'Kg'),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Tinggi'),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: tinggi,
                  decoration: InputDecoration(
                      errorText: myProvider1.getheight == true
                          ? 'Umur Harus diisi!'
                          : null,
                      filled: true,
                      prefixStyle: TextStyle(
                          color: Color(0xffCF5A27),
                          fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(),
                      hintText: 'cm'),
                ),
              ),
              Container(
                  width: 200,
                  height: 70,
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xffCF5A27))),
                      onPressed: () {
                        if (umur.text.isEmpty) {
                          myProvider1.setIsage = !myProvider1.getage;
                        } else {
                          myProvider1.setIsage = false;
                        }
                        if (berat.text.isEmpty) {
                          myProvider1.setIsweight = !myProvider1.getweight;
                        } else {
                          myProvider1.setIsweight = false;
                        }
                        if (tinggi.text.isEmpty) {
                          myProvider1.setIsheight = !myProvider1.getheight;
                        } else {
                          myProvider1.setIsheight = false;
                        }

                        if (umur.text.isNotEmpty &&
                            berat.text.isNotEmpty &&
                            tinggi.text.isNotEmpty) {
                          myProvider1.setIsage = false;
                          myProvider1.setIsheight = false;
                          myProvider1.setIsweight = false;

                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Hasil_bmi();
                          }));
                        }
                      },
                      child: const Text('Calculate'))),
            ]),
          )),
    );
  }
}
