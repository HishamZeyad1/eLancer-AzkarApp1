import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:untitled2/Screens/AboutScreen.dart';
import 'package:untitled2/Screens/AzkarScreen.dart';
import 'package:untitled2/Screens/LaunchScreen.dart';

import 'Widgets/BioCard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // var image=Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNVdsXmBZSmmlVbNBzz-CusckIe_Dnxq_1dA&usqp=CAU');

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar'),
        Locale('en'),
      ],
      locale:Locale('ar'),
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen': (context) => LaunchScreen(),
        '/azkar_screen': (context) =>  AzkarScreen(),
        '/about_screen': (context) =>  AboutScreen(),
      },

      debugShowCheckedModeBanner: false,
      // home: Scaffold(
      //   // extendBodyBehindAppBar: true,
      //   // appBar: AppBar(
      //   //   title: Text(
      //   //     "BIO",
      //   //     style: TextStyle(color: Colors.black),
      //   //   ),
      //   //   centerTitle: true,
      //   //   backgroundColor: Colors.transparent,
      //   //   elevation: 0,
      //   //   leading: Icon(Icons.email),
      //   // ),
      //   backgroundColor: Colors.amberAccent,
      //   body: Container(),
      //
      //   // body: Container(ymmetric(vertical: 27,horizontal: 130),
      //   //   // color: Colors.blue,
      //   //   decoration: BoxDecoration(
      //   //     gradient: LinearGradient(
      //   //       begin: AlignmentDirectional.topStart,
      //   //       end: Alignm
      //   //         //   // padding: EdgeInsets.sentDirectional.bottomEnd,
      //   //       colors: [Colors.blue.shade900, Colors.blue.shade300],
      //   //     ),
      //   //   ),
      //   //   child: Padding(
      //   //
      //   //     padding: EdgeInsets.symmetric(horizontal: 20),
      //   //     child: Column(
      //   //       mainAxisAlignment: MainAxisAlignment.center,
      //   //       children: [
      //   //         Spacer(),
      //   //
      //   //         CircleAvatar(
      //   //           radius: 50,
      //   //         ),
      //   //         SizedBox(height: 10 ,),
      //   //         Text(
      //   //           "Student Name",
      //   //           style: TextStyle(
      //   //             fontSize: 16,
      //   //             color: Colors.white,
      //   //             fontWeight: FontWeight.bold,
      //   //           ),
      //   //         ),
      //   //         SizedBox(height: 5 ,),
      //   //         Text(
      //   //           "eLancer - Flutter Training",
      //   //           style: TextStyle(
      //   //             fontSize: 15,
      //   //             color: Colors.black45,
      //   //             fontWeight: FontWeight.w500,
      //   //           ),
      //   //         ),
      //   //         Divider(
      //   //           color: Colors.white,
      //   //           thickness: 1.5,
      //   //           indent: 20,
      //   //           endIndent: 20,
      //   //           height: 50,
      //   //         ),
      //   //         BioCard(Title:"Email",SubTitle:"flutter@elancer.com", leadingIcon:Icons.email, traillingIcon:Icons.send,marginBottom: 20,),
      //   //         BioCard(Title:"Email",SubTitle:"flutter@elancer.com", leadingIcon:Icons.email, traillingIcon:Icons.send,marginBottom: 20,),
      //   //         BioCard(Title:"Email",SubTitle:"flutter@elancer.com", leadingIcon:Icons.email, traillingIcon:Icons.send,marginBottom: 20,),
      //   //         BioCard(Title:"Email",SubTitle:"flutter@elancer.com", leadingIcon:Icons.email, traillingIcon:Icons.send,marginBottom: 10,),
      //   //
      //   //
      //   //         // Spacer(),
      //   //         Text("Flutter"),
      //   //       ],
      //   //     ),
      //   //   ),
      //   // ),
      //
      //   // ListView(
      //   //   // color: Colors.blue,
      //   //   children: [
      //   //     Column(
      //   //       children: [Divider()],
      //   //     ),
      //   //   ],
      //   // ),
      //
      //   // body: ListView(
      //   //   // color: Colors.blue,
      //   //     children:[Column(
      //   //       children: [
      //   //         Divider()
      //   //       ],
      //   //     ),],
      //   //   // child:
      //   // ),
      // ),
    );
  }
}
