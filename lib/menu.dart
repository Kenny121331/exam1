import 'package:flutter/material.dart';

class Menu{
  String image;
  String name;
  double star;
  Menu({this.image, this.name, this.star});
}

List<Menu> menu = [
  Menu(image: 'assets/BlackBoard1.jpg', name: 'BlackBoard', star: 4.5),
  Menu(image: 'assets/Boa1.jpg', name: 'Boa', star: 2.3),
  Menu(image: 'assets/Buggi.jpg', name: 'Buggi', star: 1.0),
  Menu(image: 'assets/Captain.jpg', name: 'Captain', star: 6.0),
  Menu(image: 'assets/Chaien.jpg', name: 'Chaien', star: 3.2),
  Menu(image: 'assets/China.jpg', name: 'China', star: 2.1),
  Menu(image: 'assets/Doraemon.jpg', name: 'Doraemon', star: 4.5),
  Menu(image: 'assets/Gao black.png', name: 'Gao black', star: 3.6),
  Menu(image: 'assets/Gao blue.jpg', name: 'Gao blue', star: 2.7),
  Menu(image: 'assets/Gao red.jpg', name: 'Gao red', star: 3.2),
  Menu(image: 'assets/Gao yellow.png', name: 'Gao yellow', star: 6.3),
  Menu(image: 'assets/Iron.jpg', name: 'Iron', star: 4.5),
  Menu(image: 'assets/Kaido1.png', name: 'Kaido1', star: 5.2),
  Menu(image: 'assets/Katakuri1.png', name: 'Katakuri1', star: 3.2),
  Menu(image: 'assets/Luffy.jpg', name: 'Luffy', star: 4.8),
];

