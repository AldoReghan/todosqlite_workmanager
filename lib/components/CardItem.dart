import 'package:flutter/material.dart';

class CardItems extends StatelessWidget {
  final String judul;
  final String deskripsi;
  final backgroundcolor;
  final textcolor;

  const CardItems(
      {Key? key,
      required this.judul,
      required this.deskripsi,
      this.backgroundcolor,
      this.textcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:4.0, left: 8, right: 8),
      child: Container(
          height: 80,
          child: Card(
            color: backgroundcolor,
            child: ListTile(
              title: Text(judul, style: TextStyle(fontWeight: FontWeight.bold, color: textcolor),),
              subtitle: Text(deskripsi, style: TextStyle(color: textcolor),maxLines: 1,overflow: TextOverflow.ellipsis),
              trailing: Wrap(
                spacing: 12,
                children: [Icon(Icons.view_list)],
              ),
            ),
          )),
    );
  }
}
