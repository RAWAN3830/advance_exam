import 'package:exam/ModelClass/modelclass.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
late final int? index;
class mainprovider with ChangeNotifier{
  addtofavorite(){
   // liked_jokes.add(favorite(fav_jokes: Jokes!.value!));
  }
  removeatfavorite(){
    // liked_jokes.removeAt(index);
    notifyListeners();
  }

}