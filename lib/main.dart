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
class ShoppingListState extends State<ShoppingList>{
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
@override
  Widget build(BuildContext context){
  //build the screen
  return Scaffold(
    appBar: AppBar(title:  Text('Shopping list application',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),centerTitle: true,),
    body: Container(padding: EdgeInsets.all(10.0),
    child: Column(
      children: [
        Row(
          children: [
            Expanded(child:
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter item to add',
                border: OutlineInputBorder()
              ),
            ),
            ),

          ],
        ),
        SizedBox(height: 10,),
        Row(children: [

          Expanded(child: ElevatedButton(onPressed: addItem,style: ElevatedButton.styleFrom(backgroundColor: Colors.green), child: Text('add')),),
          SizedBox(width: 20,),
          Expanded(child: ElevatedButton(onPressed: clearList,style:ElevatedButton.styleFrom(backgroundColor: Colors.red),child: Text('Delete')),),
        ],)
      ],
    ),
    ),
  );
}
}