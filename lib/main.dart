import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
void main() => runApp(MyApp());
class MyApp extends StatefulWidget{
  @override
  counterApp createState() => counterApp();
}
class counterApp extends State<MyApp> {

  int _counter = 0;

  _inceremetCounter() {
    setState(() {
      _counter++;
    });
  }
  _decrementCounter() {
  setState(() {
  _counter--;
  });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter APP",
      color: Colors.green,
      home: Scaffold(
        body: Container(
          child: Row(
            children: [
              ElevatedButton(
                  onPressed: _decrementCounter,
                  child: Text("Press to Decrement")),
              Text("$_counter"),
              ElevatedButton(
                  onPressed: _inceremetCounter,
                  child: Text("Press to Decrement")),
            ],

          ),
        ),
      ),
    );
    throw UnimplementedError();
  }

}