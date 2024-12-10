import 'package:flutter/material.dart';
import 'package:instagram_app/homepage.dart';
import 'package:instagram_app/login.dart';
import 'package:instagram_app/searchpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(elevation: 1, color: Colors.white),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Login(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage == 1 ? const SearchPage() : const HomePage(),
      bottomNavigationBar: BottomAppBar(
          child: Row(
        children: [
          const Spacer(),
          IconButton(
              icon: Icon(
                Icons.home_rounded,
                color: currentPage == 0
                    ? const Color.fromRGBO(203, 72, 101, 1)
                    : const Color.fromRGBO(40, 40, 40, 1),
              ),
              onPressed: () {
                setState(() {
                  currentPage = 0;
                });
              }),
          const Spacer(),
          IconButton(
              icon: Icon(
                Icons.search,
                color: currentPage == 1
                    ? const Color.fromRGBO(203, 72, 101, 1)
                    : const Color.fromRGBO(40, 40, 40, 1),
              ),
              onPressed: () {
                setState(() {
                  currentPage = 1;
                });
              }),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_box_outlined,
                color: currentPage == 2
                    ? const Color.fromRGBO(203, 72, 101, 1)
                    : const Color.fromRGBO(40, 40, 40, 1),
              )),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.ondemand_video_sharp,
                color: currentPage == 3
                    ? const Color.fromRGBO(203, 72, 101, 1)
                    : const Color.fromRGBO(40, 40, 40, 1),
              )),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person,
                color: currentPage == 4
                    ? const Color.fromRGBO(203, 72, 101, 1)
                    : const Color.fromRGBO(40, 40, 40, 1),
              )),
          const Spacer(),
        ],
      )),
    );
  }
}
