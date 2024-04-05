import 'package:exam/ModelClass/modelclass.dart';
import 'package:exam/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Liked_jock extends StatefulWidget {
  const Liked_jock({super.key});

  @override
  State<Liked_jock> createState() => _Liked_jockState();
}

class _Liked_jockState extends State<Liked_jock> {
  @override
  Widget build(BuildContext context) {
    // var provider = Provider.of<mainprovider>(context,listen: true);
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text('Favorite Jokes', style: TextStyle(
          fontSize: 27, fontWeight: FontWeight.bold, letterSpacing: 1),),),
      body: Container(
        height: height,
        width: width,
        child: ListView.builder(
          itemCount:
          liked_jokes.length,
          itemBuilder: (context, index) {
            return
              Column(
                children: [
                  ListTile(
                    title:  Text(liked_jokes[index].fav_jokes!,style: TextStyle(fontSize: 18),),
                    trailing: IconButton(onPressed: (){
                      setState(() {
                        liked_jokes.removeAt(index);
                      });
                    },icon:Icon(Icons.close,size: 20,)),
                  ),
                  Divider(thickness: 3,)
                ],
              );

          },),
      ),
    );
  }
 }

