import 'package:exam/Api_Calling/call_api.dart';
import 'package:exam/Jocks_Screen/Display_jocks.dart';
import 'package:exam/ModelClass/modelclass.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Display_catagorys extends StatefulWidget {
  const Display_catagorys({super.key});

  @override
  State<Display_catagorys> createState() => _Display_catagorysState();
}

class _Display_catagorysState extends State<Display_catagorys> {

  JocksDetail? Jokes;
  bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      isLoading = true;
    });
    ApiData().loadJson().then((value) {
      setState(() {
        isLoading = false;
      });
    });

  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Text(
          'Categories',
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
      ),
      body: (isLoading == true)
          ? Center(child: CircularProgressIndicator())
          : Container(
        height: height,
        width: width,
        child: GridView.builder(
          itemCount: categoriesList.length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 400,
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      childAspectRatio: 1,
          ),
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => DisplayJokes(cate: categoriesList[index], Image: Categories[index].Image!, )));
                  },
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(children: [
                          Container(
                            height: 180,
                            width: 160,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        Categories[index].Image!),
                                    fit: BoxFit.cover,
                                    opacity: .6),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Center(
                                    child: Center(
                                      child: Text(categoriesList[index],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold)),
                                    )),
                              ],
                            ),
                          ),
                        ])
                      ],
                    ),
                  ),
                  // child: Container(
                  //     height: 100,
                  //     width: 150,
                  //     color: Colors.red,
                  //     child: Center(child: Text(categoriesList[index],style: TextStyle(fontSize: 30),))),
                ),
              ],
            );
          },
        ),
      ),
    );
   }
}


