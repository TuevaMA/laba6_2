import 'package:flutter/material.dart';
import 'dart:math';


class MyBody extends StatefulWidget {
  @override
  createState() => new MyBodyState();
}

class MyBodyState extends State<MyBody> {
  List<String> _array = [];
  String getElement(int ind){return '2^$ind=${pow(2,ind).toString()}';}

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(itemBuilder: (context, i){
      print('num $i : нечетное = ${i.isOdd}');

      if(i.isOdd) return const Divider();

      final int index = i ~/ 2;

      print('index $index');
      print('length ${_array.length}');

      if (index >= _array.length) _array.addAll([getElement(index+0),getElement(index+1),getElement(index+2)]);

      return new ListTile(title: new Text(_array[index]));
    });
  }
}

void main() =>  runApp(
    new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(body: new Center(child: new MyBody(),))
    )
);

