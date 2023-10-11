import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
       child: Stack(
        children: [

          Image(
              height: MediaQuery.of(context).size.height,

            image:const AssetImage('assets/images/homepage.jpg',),fit: BoxFit.cover),
          Align(

                alignment: Alignment.bottomCenter,
                
              ),
              ElevatedButton(
          child: Text('Elevated Button'),
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
            textStyle: const TextStyle(
                color: Colors.white,
                 fontSize: 10, 
                 fontStyle: FontStyle.normal),
          ),
          onPressed: () {},
        ),

          
          // ElevatedButton(onPressed: null, child: Text("GET Started"))
        ],
       ), 
      ));
  }
}