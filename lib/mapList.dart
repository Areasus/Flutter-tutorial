import 'package:flutter/material.dart';

class mapList extends StatefulWidget {
  @override
  State<mapList> createState() => _mapListState();
}

class _mapListState extends State<mapList> {
  var users = [
    {"id": "70-8804695", "name": "Anthiathia Pally", "mobile": "33-6108251"},
    {"id": "98-6576960", "name": "Marne Bagnal", "mobile": "93-3958998"},
    {"id": "72-8532957", "name": "Blinnie Wigan", "mobile": "38-3277353"},
    {"id": "37-1678696", "name": "Milton Bagnall", "mobile": "97-8943393"},
    {"id": "68-0042011", "name": "Sven Hazeldene", "mobile": "34-6732638"},
    {"id": "99-0701640", "name": "Giralda Klimas", "mobile": "57-5863687"},
    {"id": "40-1762514", "name": "Jamil Donaho", "mobile": "89-5248385"},
    {"id": "98-7776904", "name": "Ashbey Skeemer", "mobile": "83-2505316"},
    {"id": "50-5737683", "name": "Lorne FitzGilbert", "mobile": "41-7732733"},
    {"id": "28-4907253", "name": "Nat Hrinchishin", "mobile": "77-5660909"},
    {"id": "17-7236556", "name": "Scarface Dominik", "mobile": "66-4739864"},
    {"id": "71-2680532", "name": "Chalmers Side", "mobile": "88-9903858"},
    {"id": "30-1659874", "name": "Frayda Benardette", "mobile": "08-3657103"},
    {"id": "60-9171670", "name": "Sande Sudran", "mobile": "33-7705726"},
    {"id": "93-4913605", "name": "Gabi Brabbs", "mobile": "04-3403256"},
    {"id": "25-7425102", "name": "Josie Shreeves", "mobile": "60-3708528"},
    {"id": "50-5145962", "name": "Auguste Lantiffe", "mobile": "84-3332398"},
    {"id": "18-3539046", "name": "Edsel Shearstone", "mobile": "62-8837636"},
    {"id": "00-8346576", "name": "Thedric Khoter", "mobile": "05-8727771"},
    {"id": "33-7055574", "name": "Miquela Middle", "mobile": "57-7571202"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Map"),
      ),
      body: Container(
        child: ListView(
          children: users
              .map(
                (value) => ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text(value['name'].toString()),
                  subtitle: Text(value['mobile'].toString()),
                  trailing: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.green[600],
                    child: Text(value['id'].toString()[0]),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
