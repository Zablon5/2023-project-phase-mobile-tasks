import 'package:flutter/material.dart';

void main() => runApp(Counter());

class Counter extends StatelessWidget{
  @override
    Widget build(BuildContext context){
      return MaterialApp(
        title: 'MyCounter',
        home: CounterScreenState(),

      );
    }


}
class CounterScreenState extends StatefulWidget{
  @override
  CounterScreen createState() => CounterScreen();
}
class CounterScreen extends State<CounterScreenState>{
  int _count =0;
  
  void _increment(){
    setState(() {
      if (_count == 10){
        _count=-1;
      }
      _count++;
    });
  }
  void _decrement(){
    setState(() {
      if (_count == 0){
        _count=11;
      }
      _count--;
    });
  }
  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Counter Screen'),),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [ElevatedButton(
            child: const Text("Increment"),
            onPressed:_increment ,
          ),
          Text("${_count}"),
          
          ElevatedButton(
            child: const Text("Decrement"),
            onPressed: _decrement,
          )
          
            
          ],
        ),
      )
    );

  }
}
