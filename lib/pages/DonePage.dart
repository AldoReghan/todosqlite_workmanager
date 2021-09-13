import 'package:flutter/material.dart';
import 'package:todolist/components/CardItem.dart';

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Done Page',
      home: DonePage(),
    );
  }
}

class DonePage extends StatefulWidget {
  const DonePage({ Key? key }) : super(key: key);

  @override
  _DonePageState createState() => _DonePageState();
}

class _DonePageState extends State<DonePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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