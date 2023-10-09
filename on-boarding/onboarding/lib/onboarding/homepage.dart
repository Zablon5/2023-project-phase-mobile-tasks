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
                child: Container(
                  margin: const EdgeInsets.only(bottom:40),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.horizontal(),
                  ),
                  child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor:Colors.white,
                elevation:0,
                textStyle: const TextStyle(
                  fontSize: 18,
                fontWeight: FontWeight.bold)),
                    onPressed: () {},
                    child: const Text('Get Started '),  // trying to move to the bottom
                  ),
                ),
              )

          
          // ElevatedButton(onPressed: null, child: Text("GET Started"))
        ],
       ), 
      ));
  }
}