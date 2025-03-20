import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: ShoppingList(),
    );
  }
}
class ShoppingList extends StatefulWidget{
  @override
  ShoppingListState createState()=>ShoppingListState();
}