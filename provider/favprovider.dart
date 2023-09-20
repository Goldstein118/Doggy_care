import 'package:flutter/material.dart';

import '../favmodel.dart';








// A list of movies
final List<Movie> initialData = List.generate(
    5,
    (index) => Movie(
      nama: "dog $index",
      breed: "golden",
      umur:"4",
      lokasi: "medan"
      )
    );

class Favprovider with ChangeNotifier {
  // All movies (that will be displayed on the Home screen)
  final List<Movie> _movies = initialData;
  
  // Retrieve all movies
  List<Movie> get movies => _movies;

  // Favorite movies (that will be shown on the MyList screen)
  final List<Movie> _myList = [];

  // Retrieve favorite movies
  List<Movie> get myList => _myList;

  // Adding a movie to the favorites list
  void addToList(Movie movie) {
    _myList.add(movie);
    notifyListeners();
  }

  // Removing a movie from the favorites list
  void removeFromList(Movie movie) {
    _myList.remove(movie);
    notifyListeners();
  }
}