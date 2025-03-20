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
class ShopppingListState extends State<ShoppingList>{
  //create empty list to store the shopping items
  final List<String>itemsToAdd=[];
  //manage the text editing controller
  final TextEditingController itemController=TextEditingController();
  //function to add item to list
void addItem(){
  setState(() {
    //check if input field is not empty
    //if true add the item in the input field to the item list
    if(itemController.text.isNotEmpty){
      itemsToAdd.add(itemController.text);
      //clear input field after item addition
      itemController.clear();
    }
  });
}
//function to clear the item list
void clearList(){
  setState(() {
    //clear entire list
    itemController.clear();
  });
}
}