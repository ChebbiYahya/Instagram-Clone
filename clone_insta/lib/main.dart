import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram clone',

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //theme icon
        iconTheme: const IconThemeData(
          color: Color.fromRGBO(40, 40, 40, 1),
        ),
        //theme bottom app bar
        bottomAppBarTheme: const BottomAppBarTheme(color: Colors.white),
        //theme app bar
        appBarTheme: const AppBarTheme(
          elevation: 1,
          color: Colors.white,
          iconTheme: IconThemeData(
            color: Color.fromRGBO(40, 40, 40, 1),
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //indice de la page currente 
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage == 1 ? const SearchPage() : const HomePage(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 0;
                });
              },
              icon: Icon(
                Icons.home,
                color: currentPage == 0
                    ? const Color.fromRGBO(203, 73, 101, 1)
                    : const Color.fromRGBO(40, 40, 40, 1),
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 1;
                });
              },
              icon: Icon(
                Icons.search,
                color: currentPage == 1
                    ? const Color.fromRGBO(203, 73, 101, 1)
                    : const Color.fromRGBO(40, 40, 40, 1),
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 2;
                });
              },
              icon: Icon(
                Icons.ondemand_video,
                color: currentPage == 2
                    ? const Color.fromRGBO(203, 73, 101, 1)
                    : const Color.fromRGBO(40, 40, 40, 1),
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 3;
                });
              },
              icon: Icon(
                Icons.card_travel,
                color: currentPage == 3
                    ? const Color.fromRGBO(203, 73, 101, 1)
                    : const Color.fromRGBO(40, 40, 40, 1),
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 4;
                });
              },
              icon: Icon(
                Icons.person,
                color: currentPage == 4
                    ? const Color.fromRGBO(203, 73, 101, 1)
                    : const Color.fromRGBO(40, 40, 40, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
