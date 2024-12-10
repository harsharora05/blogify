import 'package:blogify/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true).copyWith(
            primaryColor: const Color.fromARGB(255, 200, 186, 238),
            primaryColorDark: const Color.fromARGB(255, 90, 58, 177),
            primaryColorLight: const Color.fromARGB(255, 169, 160, 192)),
        home: const Homepage());
  }
}
