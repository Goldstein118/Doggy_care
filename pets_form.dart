



import 'package:flutter/material.dart';



import 'package:flutter_application_1/db_pets.dart';

import 'models.dart';


class TaskScreen extends StatefulWidget {
  final Pet? pet;
  TaskScreen({this.pet});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  TextEditingController nama = TextEditingController();
  TextEditingController breed = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController lokasi = TextEditingController();
  DbHelper db = DbHelper();



  @override
  

  

  void initState() {
    nama =
        TextEditingController(text: widget.pet == null ? '' : widget.pet!.Name);
    breed = TextEditingController(
        text: widget.pet == null ? '' : widget.pet!.Breed);
    age =
        TextEditingController(text: widget.pet == null ? '' : widget.pet!.Age);
    lokasi = TextEditingController(
        text: widget.pet == null ? '' : widget.pet!.Location);
    super.initState();
  }



  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Center(child: (Text("Add Mypets"))),
        ),
        body: ListView(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Nama'),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: nama,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffCF5A27)))),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Dog Breed'),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: breed,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffCF5A27)))),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Age'),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: age,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffCF5A27)))),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Lokasi'),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: lokasi,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffCF5A27)))),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Upload Profile Picture'),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.attach_file,
                          color: Color(0xffCF5A27),
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffCF5A27)))),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 100,
                      height: 60,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Color(0xffCF5A27))),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Cancel',
                          style: TextStyle(color: Color(0xffCF5A27)),
                        ),
                      ),
                    ),
                    SizedBox(
                        width: 200,
                        height: 60,
                        child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Color(0xffCF5A27)),
                          
                          child: (widget.pet == null)
                              ? Text(
                                  'Add',
                                  style: TextStyle(color: Colors.white),
                                )
                              : Text(
                                  'Update',
                                  style: TextStyle(color: Colors.white),
                                ),
                              
                          onPressed: () {
                            upsertPet();
                          },
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 95,
              )
            ],
          ),
        ]));
  }

  Future<void> upsertPet() async {
    if (widget.pet != null) {
      //insert

      await db.updatePet(Pet.fromMap({
        'id': widget.pet?.id,
        'Name': nama.text,
        'Breed': breed.text,
        'Age': age.text,
        'Location': lokasi.text,
      }));
      Navigator.pop(context, 'update');
    } else {
      //update
      await db.savePet(Pet.fromMap({
        'id': widget.pet?.id,
        'Name': nama.text,
        'Breed': breed.text,
        'Age': age.text,
        'Location': lokasi.text,
      }));
      Navigator.pop(context, 'save');
    }
  }
}

mixin File {
}
