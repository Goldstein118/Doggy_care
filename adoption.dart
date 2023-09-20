
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



import '../provider/favprovider.dart';
import 'favorite.dart';




class Adoption extends StatefulWidget {
  const Adoption({Key? key}) : super(key: key);

  @override
  _AdoptionState createState() => _AdoptionState();
}

class _AdoptionState extends State<Adoption> {
  @override
  Widget build(BuildContext context) {
    var movies = context.watch<Favprovider>().movies;
    var myList = context.watch<Favprovider>().myList;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Adobtion Market'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Favorite(),
                  ),
                );
              },
              icon: const Icon(Icons.favorite),
              label: Text(
                "Favorite (${myList.length})",
                style: const TextStyle(fontSize: 24),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  padding: const EdgeInsets.symmetric(vertical: 20)),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: movies.length,
                  itemBuilder: (_, index) {
                    final currentMovie = movies[index];
                    return Container(
                      padding: EdgeInsets.all(10),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            left: 155,
                            top: 20,
                            child: SizedBox(
                              width: 200,
                              height: 150,
                              child: Card(
                                  elevation: 10,
                                  color: const Color(0xffeed3c1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text('nama',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              )),
                                          IconButton(
                                            onPressed: (() {
                                              if (!myList
                                                  .contains(currentMovie)) {
                                                context
                                                    .read<Favprovider>()
                                                    .addToList(currentMovie);
                                              } else {
                                                context
                                                    .read<Favprovider>()
                                                    .removeFromList(
                                                        currentMovie);
                                              }
                                            }),
                                            icon: Icon(
                                              Icons.favorite,
                                              color:
                                                  myList.contains(currentMovie)
                                                      ? Colors.red
                                                      : Colors.white,
                                              size: 30,
                                            ),
                                          )
                                        ],
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Text(
                                          'Breed :breed',
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0)),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Text(
                                          'Umur : ',
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0)),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Text('Lokasi : }',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0))),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                          Container(
                            width: 200,
                            height: 190,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                          image: AssetImage('assets/slide1.jpg'),
                          fit: BoxFit.fill),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
