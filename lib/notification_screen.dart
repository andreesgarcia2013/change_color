import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
   
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  Map<int,bool> seenMap = <int,bool>{
      0:false,
      1:false,
      2:false,
      3:false,
      4:false,
    };
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          seenMap[index]=true;
          setState(() {
            print('$index: ${seenMap[index]}');
          });
      },
        child: AnimatedContainer(
          margin: EdgeInsets.symmetric(vertical: 10),
          height: 200,
          color: seenMap[index]==false? Colors.red: Colors.blue,
          duration: Duration(milliseconds: 1),
        )
      ),
      )
    );
  }
}