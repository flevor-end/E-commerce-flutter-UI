import 'package:flutter/material.dart';

class User {
  final String name, image;

  User({@required this.name, @required this.image});
}

// Demo List of Top Travelers
List<User> topUsers = [user1, user2, user3, user4];

// demo user
User user1 = User(name: "James", image: "assets/users/james.png");
User user2 = User(name: "John", image: "assets/users/John.png");
User user3 = User(name: "Marry", image: "assets/users/marry.png");
User user4 = User(name: "Rosy", image: "assets/users/rosy.png");
