import 'package:flutter/material.dart';
import 'package:flutter_application_1/api.dart';
import 'package:flutter_application_1/customlisttile.dart';
import 'adoption.dart';
import 'bmi.dart';
import 'diagnosa.dart';
import 'model/article_model.dart';



class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  ApiService client = ApiService();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Card(
          elevation: 10,
          color: const Color(0xffeed3c1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: const ListTile(
            leading: Icon(Icons.search),
            title: TextField(
                decoration: InputDecoration.collapsed(hintText: 'Search')),
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xffCF5A27), width: 4),
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                        image: AssetImage('assets/Health.jpg'),
                        fit: BoxFit.contain),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 17, 17, 17)
                            .withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 1,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                child: InkWell(
                  onTap: () {
                    Route route = MaterialPageRoute(
                        builder: (context) => const DiagnosaScreen());
                    Navigator.push(context, route);
                  }, // Handle your callback.
                  splashColor: Colors.brown.withOpacity(0.1),
                  child: Ink(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: Color(0xffCF5A27),
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                  ),
                ),
              ),
              Container(
                height: 35,
                width: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: const Color(0xffCF5A27)),
                child: SizedBox(
                  width: 70,
                  height: 30,
                  child: Card(
                    semanticContainer: true,
                    elevation: 10,
                    color: const Color(0xffeed3c1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: const Text(
                      'Diagnosis\nPenyakit',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12, fontFamily: 'nunitoR'),
                    ),
                  ),
                ),
              )
            ],
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xffCF5A27), width: 4),
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                        image: AssetImage('assets/Pet.jpg'),
                        fit: BoxFit.contain),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 17, 17, 17)
                            .withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 1,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                child: InkWell(
                  onTap: () {
                    Route route = MaterialPageRoute(
                        builder: (context) => const Adoption());
                    Navigator.push(context, route);
                  }, // Handle your callback.
                  splashColor: Colors.brown.withOpacity(0.1),
                  child: Ink(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: Color(0xffCF5A27),
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                  ),
                ),
              ),
              Container(
                height: 35,
                width: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: const Color(0xffCF5A27)),
                child: SizedBox(
                  width: 70,
                  height: 30,
                  child: Card(
                    elevation: 10,
                    color: const Color(0xffeed3c1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: const Text('Adoption\nMarket',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12, fontFamily: 'nunitoR')),
                  ),
                ),
              )
            ],
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xffCF5A27), width: 4),
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                        image: AssetImage('assets/BMI.jpg'),
                        fit: BoxFit.contain),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 17, 17, 17)
                            .withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 1,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                child: InkWell(
                  onTap: () {
                    Route route =
                        MaterialPageRoute(builder: (context) => const BMI());
                    Navigator.push(context, route);
                  }, // Handle your callback.
                  splashColor: Colors.brown.withOpacity(0.1),
                  child: Ink(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: Color(0xffCF5A27),
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                  ),
                ),
              ),
              Container(
                height: 35,
                width: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: const Color(0xffCF5A27)),
                child: SizedBox(
                  width: 70,
                  height: 30,
                  child: Card(
                    semanticContainer: true,
                    elevation: 10,
                    color: const Color(0xffeed3c1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: const Text('Kalkulator\nBMI',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12, fontFamily: 'nunitoR')),
                  ),
                ),
              )
            ],
          ),
        ]),
        SizedBox(
          height: 600,
          child: FutureBuilder(
              future: client.getArticle(),
              builder: (BuildContext context,
                  AsyncSnapshot<List<Article>> snapshot) {
                //let's check if we got a response or not
                if (snapshot.hasData) {
                  //Now let's make a list of articles
                  List<Article>? articles = snapshot.data;
                  return ListView.builder(
                    //Now let's create our custom List tile
                    itemCount: articles!.length,
                    itemBuilder: (context, index) =>
                        customListTile(articles[index], context),
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }),
        )
      ]),
    );
  }
}
