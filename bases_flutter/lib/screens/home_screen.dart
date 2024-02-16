import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int currentPage = 1;
  final PageController pageController = new PageController(initialPage: 1);


  @override
  Widget build(BuildContext context) {
    return Scaffold(//define el espacio donde se va a trabajar
      appBar: AppBar(
        title: Text('Hola Mundo $currentPage'),
      ),
      body: PageView(
        controller: pageController,
        //indica que ya no hay mas scroll horizontal
        // physics: BouncingScrollPhysics(),
        physics: NeverScrollableScrollPhysics(),
        children: [
          CustomScreen(color: Colors.blue),
          CustomScreen(color: Colors.pink),
          CustomScreen(color: Colors.green),
        ],
      ),
      // body: currentPage == 0 
      //       ? CustomScreen(color: Colors.blue)
      //       : CustomScreen(color: Colors.indigo),
      //* Tabs
        bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (index) {
          currentPage = index;

          //print( 'index: $index' );
          //Para acceder a las props o metodos se debe usar {}
          //print( 'index: ${index.toString()}' );
          pageController.animateToPage(index, 
            duration: Duration( milliseconds: 300), 
            curve: Curves.easeOut 
          );

          setState(() {});
        },
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.5),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_max_rounded),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.car_rental),
            label: 'Car'
          )
        ],
      ),
    );
  }
}

class CustomScreen extends StatelessWidget {

  final Color color;
  //Las llaves {} dentro del constructor indican los argumentos por nombre
  const CustomScreen({required this.color});

  

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Text('Custom Screen'),
      ),
    );
  }
  
}