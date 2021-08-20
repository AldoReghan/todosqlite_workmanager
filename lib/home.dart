import 'package:flutter/material.dart';
import 'package:todolist/pages/DonePage.dart';
import 'package:todolist/pages/OnProgressPage.dart';
import 'package:todolist/pages/TodoPage.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Color.fromRGBO(38, 38, 38, 0.4),
            centerTitle: true,
            title: Text(
              "What's Up, Aldo",
              style: TextStyle(fontSize: 16.0),
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[Colors.blue, Color(0xFF0D47A1)])),
            ),
            bottom: PreferredSize(
                child: TabBar(
                  labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    isScrollable: true,
                    unselectedLabelColor: Colors.white.withOpacity(0.3),
                    indicatorColor: Colors.transparent,
                    tabs: [
                      Tab(
                        child: Text('To Do'),
                      ),
                      Tab(
                        child: Text('On Progress'),
                      ),
                      Tab(
                        child: Text('Done'),
                      )
                    ]),
                preferredSize: Size.fromHeight(50.0)),
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.alarm),
                  )
                ],
          ),
          body: TabBarView(
            children: <Widget>[
              ToDoPage(),
              OnProgressPage(),
              DonePage()
            ],
          ),
          ),
    );
  }
}
