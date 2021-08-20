import 'package:flutter/material.dart';
import 'package:todolist/components/CardItem.dart';
import 'package:todolist/pages/AddToDo.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Do Page',
      home: ToDoPage(),
    );
  }
}

class ToDoPage extends StatefulWidget {
  const ToDoPage({Key? key}) : super(key: key);

  @override
  _ToDoPageState createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            CardItems(
                judul: "UI Home To Do List",
                deskripsi: "deadline tanggal 20 desember 2021", backgroundcolor: Colors.blue[900], textcolor: Colors.white,),
            CardItems(judul: "UI Home To Do List", deskripsi: "deskripsi"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddToDo()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
