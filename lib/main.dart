import 'dart:ui';

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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color(0xff0D031B),
      appBar: AppBar(
      title: const Text("Si Vis Pacem, Para Bellum.",
      style: 
      TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w300,
              fontStyle: FontStyle.italic,
              color: Color.fromARGB(255, 190, 30, 30),
              fontFeatures: [FontFeature.enable('trad')]
            ),),
      backgroundColor: Color(0xff0D031B),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Tell Them All. Whoever Comes, Whoever It Is, I'll Kill Them. I'll Kill Them All.",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 190, 30, 30),
                fontFeatures: [FontFeature.enable('trad')]
              ),
            ),
          ),
          Image.network("https://wallpapercave.com/wp/wp11345429.jpg",
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Text('Your error widget...');
          },
          loadingBuilder: (context, child, loadingProgress) {
            if(loadingProgress == null){
              return child;
            }
            return Center(
              child: CircularProgressIndicator(
                color: Colors.red[700],
                value: loadingProgress.expectedTotalBytes !=null
                ?loadingProgress.cumulativeBytesLoaded/
                loadingProgress.expectedTotalBytes! :
                null,) 
            );
          },)]
      ),
      );
  }
}
