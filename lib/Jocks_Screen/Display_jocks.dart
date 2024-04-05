import 'package:exam/Api_Calling/call_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_it/share_it.dart';


import '../modelclass/modelclass.dart';

class DisplayJokes extends StatefulWidget {
  final String cate;
  final String Image;
  const DisplayJokes({super.key, required this.cate, required this.Image});

  @override
  State<DisplayJokes> createState() => _DisplayJokesState();
}

class _DisplayJokesState extends State<DisplayJokes> {
  JocksDetail? Jokes;
  bool isLoading = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      isLoading= true;
    });
    ApiData().loadApiData(widget.cate).then(
          (value) {
        Jokes = value;
        setState(() {

          isLoading= false;
        });
      },
    );
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          actions: [IconButton(onPressed: ()
          {
            setState(() {
               liked_jokes.add(favorite(fav_jokes: Jokes!.value!));

            });
          },
              icon: Icon(CupertinoIcons.heart,size: 30,))],
          title: Text('Jokes',  style: TextStyle(
              fontSize: 27, fontWeight: FontWeight.bold, letterSpacing: 1),)),
      body: (isLoading==true)?Center(child: CircularProgressIndicator())
          :Center(
            child: Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
    decoration: const BoxDecoration(
    image: DecorationImage(image: AssetImage('assets/images/img_1.png'),fit: BoxFit.fitHeight)),
    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      height: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(20),
                          color: Colors.white30
                      ),
                      child: Column(
                        children: [
                          Text(widget.cate,style: TextStyle(
                            color: Colors.black,
                              fontSize: 28,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              decorationStyle: TextDecorationStyle.dotted
                          )),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(Jokes!.value!,style: TextStyle(
                              color: Colors.black,
                                fontSize: 22,
                                letterSpacing: 1
                            ),),
                          ),

                        ],

                      ),

                    ),

                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          IconButton(onPressed: (){
                            ShareIt.text(content:Jokes!.value!);

                          }, icon: Icon(Icons.share,size: 30,)),
                          SizedBox(width: 60,),
                          IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.heart,size: 30,)),
                        ],
                      ),
                    )
                  ],
                ),
            ),
          ),
    );
  }
}