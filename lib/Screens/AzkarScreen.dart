import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/Screens/AboutScreen.dart';

class AzkarScreen extends StatefulWidget {
  const AzkarScreen({Key? key}) : super(key: key);

  @override
  _AzkarScreenState createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen> {
  int _counter = 0;
  String _azkar = "الحمدالله";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ++_counter;
          });
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/about_screen',
                arguments: {'message': "Azkar Screen"},
              );
            },
            // onPressed: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => AboutScreen(content: 'AZkar Content'),
            //     ),
            //   );
            // },
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              setState(() {
                if (_azkar != value) {
                  _azkar = value;
                  _counter = 0;
                }
              });
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text("الحمدالله"),
                  value: "الحمدالله",
                ),
                PopupMenuItem(
                  child: Text("استغفر الله"),
                  value: "استغفر الله",
                ),
              ];
            },
          )
        ],
        title: Text(
          'سبحة اذكار',
          // textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/sojod.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 150),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(radius: 90,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      'images/salah.jpg',
                    ),
                    radius: 80,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  // clipBehavior: Clip.antiAlias,
                  // color: Colors.green,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          _azkar,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        child: Container(
                          color: Colors.teal,
                          child: Text("$_counter"),
                          alignment: Alignment.center,
                        ),
                        width: 30,
                        height: double.infinity,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  // color: Colors.black,
                  // clipBehavior: Clip.antiAlias,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              ++_counter;
                            });
                          },
                          child: Text('تسبيح'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.teal,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          // clipBehavior: Clip.antiAlias,
                          onPressed: () {
                            setState(() {
                              if (_counter != 0) _counter = 0;
                            });
                          },
                          child: Text('اعادة'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orangeAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
