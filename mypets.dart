import 'package:flutter/material.dart';
import 'package:flutter_application_1/db_pets.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/provider/switch_provider.dart';

import 'package:provider/provider.dart';

import '../provider/pets_provider.dart';
import 'models.dart';
import 'pets_form.dart';

class Mypets extends StatefulWidget {
  const Mypets({super.key});

  @override
  State<Mypets> createState() => _MypetsState();
}

class _MypetsState extends State<Mypets> {
  @override
  Widget build(BuildContext context) {
    final myprovider = Provider.of<SwitchProvider>(context);
    return ChangeNotifierProvider(
        create: (context) => TaskProvider(),
        child: const Scaffold(
          body: MyHomePage(),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Pet> listPet = [];
  DbHelper db = DbHelper();

  @override
  void initState() {
    _getAllPet();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('My Pets'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Route route = MaterialPageRoute(builder: (context) => Home());
            Navigator.push(context, route);
          },
        ),
      ),
      body: ListView.builder(
          itemCount: listPet.length,
          itemBuilder: (context, index) {
            Pet pet = listPet[index];
            return Column(
              children: [
                Card(
                  elevation: 3,
                  child: ListTile(
                    onTap: () {
                      //edit
                      _openFormEdit(pet);
                    },
                    contentPadding: const EdgeInsets.all(16),
                    leading: CircleAvatar(radius: 25),
                    title: Text(
                      '${pet.Name}  ',
                      style: const TextStyle(
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                          color: Colors.deepOrangeAccent),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('${pet.Breed}'),
                            SizedBox(
                              width: 55,
                            ),
                            Text('umur: ${pet.Age}')
                          ],
                        ),
                        Text('lokasi: ${pet.Location}')
                      ],
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        AlertDialog hapus = AlertDialog(
                          title: const Text('Information'),
                          content: Container(
                            height: 100,
                            child: Column(
                              children: [
                                Text(
                                    'Apakah anda yakin ingin menghapus data ${pet.Breed}'),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              child: const Text('Ya'),
                              onPressed: () {
                                //delete
                                _deletePegawai(pet, index);
                                Navigator.of(context, rootNavigator: true)
                                    .pop();
                              },
                            ),
                            TextButton(
                              child: const Text('Tidak'),
                              onPressed: () {
                                Navigator.of(context, rootNavigator: true)
                                    .pop();
                              },
                            ),
                          ],
                        );
                        showDialog(
                            context: context, builder: (context) => hapus);
                      },
                    ),
                  ),
                ),
                Divider(
                  height: 5,
                )
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _openFormCreate();
        },
        child: const Icon(
          Icons.add,
          color: Color(0xffCF5A27),
        ),
        backgroundColor: const Color(0xffeed3c1),
      ),
    );
  }

  Future<void> _getAllPet() async {
    var list = await db.getAllPet();
    setState(() {
      listPet.clear();
      for (var pet in list!) {
        listPet.add(Pet.fromMap(pet));
      }
    });
  }

  Future<void> _deletePegawai(Pet pet, int position) async {
    await db.deletePet(pet.id!);

    setState(() {
      listPet.removeAt(position);
    });
  }

  Future<void> _openFormCreate() async {
    var result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => TaskScreen()));
    if (result == 'save') {
      await _getAllPet();
    }
  }

  Future<void> _openFormEdit(Pet pet) async {
    var result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => TaskScreen(pet: pet)));
    if (result == 'update') {
      await _getAllPet();
    }
  }
}
