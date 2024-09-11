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
  List<String> titleList = ['AmazonPrime','Netflix','Hulu','U-NEXT','FOD'];//titleListの変数提示

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
            title:Text(titleList[0]),
          ),
          Divider(thickness: 7), //線
          ListTile(
            leading: Icon(Icons.video_collection),
            title:Text(titleList[1]),
          ) ,
          Divider(),
          ListTile(
            leading: Icon(Icons.video_collection),
            title:Text(titleList[2]),
          ) ,
          Divider(),
          ListTile(
            leading: Icon(Icons.video_collection),
            title:Text(titleList[3]),
          ) ,
          Divider(),
          ListTile(
            leading: Icon(Icons.vpn_key),
            title:Text(titleList[4]),
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
