import 'package:flutter/material.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () => Navigator.pushNamed(context, '/azkar_screen'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Container(
        decoration: BoxDecoration(
          // color: Colors.green,
          // image: DecorationImage(
          //   fit: BoxFit.cover,
          //   image: NetworkImage(
          //       'http://cdn.playbuzz.com/cdn/925704be-9b8e-4dfc-852e-f24d720cb9c5/bcf39e88-5731-43bb-9d4b-e5b3b2b1fdf2.jpg'),
          // ),
          // shape: BoxShape.circle,
          // borderRadius: BorderRadius.circular(50),
          // border: Border.all(color: Colors.blueAccent, width: 5),
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [Colors.teal.shade900, Colors.teal.shade300],
          ),
        ),
        child: Center(
          child: const Text(
            "مسبحة اذكار",
            style: TextStyle(fontFamily:'Amiri' ,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            // textDirection: TextDirection.ltr,
          ),
        ),
      ),
    );
  }
}
