import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            leading: const CircleAvatar(
        backgroundImage:AssetImage("image/Alex.png")),
            centerTitle: true,
            title: Text("Dream11"),
            backgroundColor: Colors.red.shade800,
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.sports_baseball),child: Text("CRICKET"),),
                Tab(icon: Icon(Icons.sports_basketball),child: Text("FOOTBALL"),),
                Tab(icon: Icon(Icons.sports_football),child: Text("BASKETBALL"),),
                Tab(icon: Icon(Icons.sports_hockey_rounded),child: Text("HOCKEY"),),
                Tab(icon: Icon(Icons.sports_baseball_outlined),child: Text("BASEBALL"),)
              ],
            ),

          ),
          body: TabBarView(
            children: [
              Container(color: Colors.greenAccent,),
              Container(color: Colors.blueAccent,),
              Container(color: Colors.yellow,),
              Container(color: Colors.cyanAccent,),
              Container(color: Colors.lightBlueAccent,),
            ],
          ),

        ),
      )
    );
  }
}
