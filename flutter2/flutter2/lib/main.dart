import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( //kerangka
      body: Center(
        child: Row(
          children: [
            Container(
              height: 100,
              width:100,
              color: Colors.green,
              child:const Center(child:Text("olala imoet"))
            ),
            Container(
              height:100,
              width:100,
              color: Colors.amber,
              child:const Center(child:Text("hummm"))
            )
        ],
        ),
      ),
      appBar: AppBar(
        title: Text("navbar"),
        leading: IconButton(
          onPressed: () {
            print("Saya di tekan");
          },
          icon: Icon(Icons.menu),
        ),
      ),
    );
  }
}