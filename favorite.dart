
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/favprovider.dart';





class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    final _myList = context.watch<Favprovider>().myList;
    return Scaffold(
      body: ListView.builder(
          itemCount: _myList.length,
          itemBuilder: (_, index) {
            final currentMovie = _myList[index];
            return Card(
              key: ValueKey(currentMovie.nama),
              elevation: 4,
              child: ListTile(
                title: Text(currentMovie.nama),
                subtitle: Text(currentMovie.breed ),
                trailing: TextButton(
                  child: const Text(
                    'Remove',
                    style: TextStyle(color: Colors.red),
                  ),
                  onPressed: () {
                    context.read<Favprovider>().removeFromList(currentMovie);
                  },
                ),
              ),
            );
          }),
    );
  }
}