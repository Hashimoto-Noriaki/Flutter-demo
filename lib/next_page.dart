import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {
  final String title;
  NextPage(this.title);
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(38.0),
          child: Column(
            children: [
              // 上部に空白を追加
              SizedBox(height: MediaQuery.of(context).size.height * 0.2), // 画面高さの20%分の余白

              // 中央揃え
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 50,
                        child: Text('ID'),
                      ),
                      Container(
                        width: 20,
                        child: Text(':'),
                      ),
                      Text('毎回同じIDを表示'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 50,
                        child: Text('PW'),
                      ),
                      Container(
                        width: 20,
                        child: Text(':'),
                      ),
                      Text('毎回同じパスワードを表示'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
