import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  // const AboutScreen({Key? key}) : super(key: key);

  // final String content;
  // AboutScreen({this.content=""});

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

String _message = "";

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    ModalRoute? modelRoute = ModalRoute.of(context);
    if (modelRoute != null) {
      Map<String, dynamic> arguments =
      modelRoute.settings.arguments as Map<String, dynamic>;
      if (arguments.containsKey('message')) {
        _message = arguments['message'];
        print(_message);
      }
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Text(
          'content',
          // widget.content?,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
