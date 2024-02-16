import 'package:bases_flutter/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //el context puede entenderse como el arbol de widgets de una app flutter
    //Adema guarda la referencia a los widgets construidos
   return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Material App',
    home: HomeScreen()
   );
  }

}



