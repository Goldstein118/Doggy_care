import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

import '../provider/chipprovider.dart';





class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({Key? key}) : super(key: key);

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  TextEditingController txtSaran = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var myProvider1 = Provider.of<ChoiceChipFdbck>(context);
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
              icon: Icon(Icons.arrow_back),
            ),
            title: const Text("Feedback",
                style: TextStyle(fontWeight: FontWeight.bold)),
            centerTitle: true,
            backgroundColor: Color(0xff312227)),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 20, left: 5, bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Rate Your Experience',
                  style: TextStyle(fontSize: 30, color: Color(0xffCF5A27)),
                ),
                SizedBox(height: 20),
                Text(
                  'Are you satisfied?',
                  style: TextStyle(fontSize: 15, color: Color(0xffCF5A27)),
                ),
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                SizedBox(height: 10),
                Text(
                  'Tell Us What can We Improve?',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffCF5A27)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: Wrap(
                    children: [
                      ChoiceChip(
                        label: Text('Our Service'),
                        selected: myProvider1.getchoice1,
                        onSelected: (val) {
                          myProvider1.setchoice1 = val;
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: ChoiceChip(
                          label: Text('Pengiriman Lambat'),
                          selected: myProvider1.getchoice2,
                          onSelected: (val) {
                            myProvider1.setchoice2 = val;
                          },
                        ),
                      ),
                      ChoiceChip(
                        label: Text('Pesanan tidak sesuai'),
                        selected: myProvider1.getchoice3,
                        onSelected: (val) {
                          myProvider1.setchoice3 = val;
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: ChoiceChip(
                          label: Text('Admin tidak ramah'),
                          selected: myProvider1.getchoice4,
                          onSelected: (val) {
                            myProvider1.setchoice4 = val;
                          },
                        ),
                      ),
                      ChoiceChip(
                        label: Text('Biaya Kemahalan'),
                        selected: myProvider1.getchoice5,
                        onSelected: (val) {
                          myProvider1.setchoice5 = val;
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: ChoiceChip(
                          label: Text('Tidak Fast Respon'),
                          selected: myProvider1.getchoice6,
                          onSelected: (val) {
                            myProvider1.setchoice6 = val;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    maxLines: 7,
                    controller: txtSaran,
                    decoration: InputDecoration(
                      fillColor: Colors.deepOrange[100],
                      filled: true,
                      prefixStyle: TextStyle(
                          color: Color(0xffCF5A27),
                          fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        height: 40,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                    title: Text('Saran Anda'),
                                    content: SizedBox(
                                      height: 200,
                                      child: Text('${txtSaran.text}'),
                                    ),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context, 'OK');
                                          },
                                          child: Text(
                                            'OK',
                                            style: TextStyle(
                                                color: Color(0xffCF5A27)),
                                          ))
                                    ],
                                  ));
                        },
                        color: Color(0xffCF5A27),
                        child: Text(
                          'Kirim',
                          style:
                              TextStyle(color: Color(0xff312227), fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
