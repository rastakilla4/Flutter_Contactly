import 'package:flutter/material.dart';
import 'models/Record.dart';
import 'helpers/URLLauncher.dart';


class DetailPage extends StatelessWidget {

  final Record record;

  DetailPage({this.record});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(record.name),
      ),
      body: new ListView(
        children: <Widget>[
          Hero(
            tag: "avatar_"+record.name,
            child: new Image.network(record.photo),
          ),
          GestureDetector(
            onTap: () {
              URLLauncher().launchURL(record.url);
            },
            child: new Container(
              padding: const EdgeInsets.all(32.0),
              child: new Row(
                children: <Widget>[
                  new Expanded(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: new Text(
                            "Name: "+ record.name,
                            style: new TextStyle(fontWeight:FontWeight.bold),
                          ),
                        ),
                        new Text(
                          "Addres: "+ record.address,
                          style: new TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ),
                  new Icon(
                    Icons.phone,
                    color: Colors.red[500],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  
}