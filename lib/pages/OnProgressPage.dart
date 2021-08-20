import 'package:flutter/material.dart';
import 'package:todolist/components/CardItem.dart';

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'On Progress',
      home: OnProgressPage(),
    );
  }
}

class OnProgressPage extends StatefulWidget {
  const OnProgressPage({ Key? key }) : super(key: key);

  @override
  _OnProgressPageState createState() => _OnProgressPageState();
}

class _OnProgressPageState extends State<OnProgressPage> {
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
                deskripsi: "deadline tanggal 20 desember 2021"),
            CardItems(judul: "UI Home To Do List", deskripsi: "deskripsi"),
          ],
        ),
      ),
    );
  }
}