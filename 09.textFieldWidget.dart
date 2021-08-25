import 'package:allone/08.cardWidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(allone());
}

class allone extends StatefulWidget {
  const allone({Key? key}) : super(key: key);

  @override
  _alloneState createState() => _alloneState();
}

class _alloneState extends State<allone> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("TextField")),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                obscureText: true, // Membuat teks tidak terlihat
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller,
              ),
              Text(controller.text),
            ],
          ),
        ),
      ),
    );
  }
}
