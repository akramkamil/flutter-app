import 'package:flutter/material.dart';
class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
  return Scaffold(
   appBar: AppBar(
    actions: [
     IconButton(onPressed: () {}
      , icon: Icon(Icons.add),)
    ],
   ),
   body: NewsList(),
  );
 }

}
  
