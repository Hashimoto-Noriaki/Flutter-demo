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
        // This is the theme of your application.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
// ThemeDataはWidgetの終了

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Flutterのデモ"),
      ),
      body: ListView( //ListViewは複数のヴィジェットをスクロール可能な状態で、縦に並べるWidget
        children: [
          ListTile(  //ListTileは1枚のリストができる
            leading: Icon(Icons.video_collection),  //leadingは左側に何かを表示したい時
            title:Text("AmazonPrime"),
          ),
          Divider(thickness: 7), //線
          ListTile(
            leading: Icon(Icons.video_collection),
            title:Text("Netflix"),
          ) ,
          Divider(),
          ListTile(
            leading: Icon(Icons.video_collection),
            title:Text("Hulu"),
          ) ,
          Divider(),
          ListTile(
            leading: Icon(Icons.video_collection),
            title:Text("U-NEXT"),
          ) ,
          Divider(),
          ListTile(
            leading: Icon(Icons.vpn_key),
            title:Text("FOD"),
          ) ,
          Divider(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
