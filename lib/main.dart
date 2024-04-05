import 'package:exam/Api_Calling/call_api.dart';
import 'package:exam/Jocks_Screen/Liked_jock/liked_jocks.dart';
import 'package:exam/Jocks_Screen/display_catagorys.dart';
import 'package:exam/spash_screen/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ModelClass/modelclass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(
 useMaterial3: true
      ),
      home: const GetStartedPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return   DefaultTabController(
      length: 2,
      child: Scaffold(
        bottomNavigationBar: Container(
          height: 80,
          width: Checkbox.width,
          child: TabBar(
              labelStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              tabs: [
                Container(
                  child: Tab(
                    text: 'Category',
                    height: 80,
                    icon: Icon(Icons.category,size: 30,),
                  ),
                ),
                Container(
                  child: Tab(
                    text: 'Favorite',
                    height: 80,
                    icon: Icon(CupertinoIcons.heart_fill,size: 30,),
                  ),
                ),
              ]),
        ),
        body: TabBarView(children: [
          Display_catagorys(),
          Liked_jock()
        ]),

      ),
    );
  }
}
