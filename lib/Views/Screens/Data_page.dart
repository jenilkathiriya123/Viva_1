import 'package:flutter/material.dart';

import 'Global.dart';

class data extends StatefulWidget {
  const data({Key? key}) : super(key: key);

  @override
  State<data> createState() => _dataState();
}

class _dataState extends State<data> {
  @override
  Widget build(BuildContext context) {
    //List<Map<String,dynamic>> data = ModalRoute.of(context)?.settings.arguments as List<Map<String,dynamic>>;
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: Global.allData.length,
          itemBuilder: (context, i) => Card(
            elevation: 5,
            child: ListTile(
              title: Text("${Global.allData[i]['thought']}"),
               subtitle: Text(
                   "${Global.allData[i]['hour']}:${Global.allData[i]['min']}:${Global.allData[i]['sec']}"),
            ),
          ),
        ),
      ),
    );
  }
}
