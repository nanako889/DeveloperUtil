import 'package:flutter/material.dart';

class TransparencyToHexApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TransparencyToHexHomePage(),
    );
  }
}

class TransparencyToHexHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TransparencyToHexHomePageState();
  }
}

class _TransparencyToHexHomePageState extends State<TransparencyToHexHomePage> {
  String _inputValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('色值透明度转换为十六进制'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              onChanged: (text) {
                setState(() {
                  _inputValue = (double.parse(text) * (255 / 100))
                      .toInt()
                      .toRadixString(16);
                });
              },
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(padding: const EdgeInsets.all(20), child: Text(_inputValue))
        ],
      ),
    );
  }
}
