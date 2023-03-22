// import 'package:change_color/provider/ui_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// void main() {
//   runApp( MultiProvider(
//     providers: [
//       ChangeNotifierProvider(create: ( _ ) => UIProvider())
//     ],
//     child: MyApp()
//     )
//   );
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   Map<int,bool> seenMap = <int,bool>{
//       0:true,
//       1:false,
//       2:false,
//       3:false,
//       4:false,
//     };
//   @override
//   Widget build(BuildContext context) {
//     final ui=Provider.of<UIProvider>(context);
//     return MaterialApp(
//       title: 'Material App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Material App Bar'),
//         ),
//         body: ListView.builder(
//       itemCount: 5,
//       itemBuilder: (context, index) => GestureDetector(
//         onTap: () {
//           seenMap[index]=true;
//           setState(() {
//             print('$index: ${seenMap[index]}');
//           });
//       },
//         child: AnimatedContainer(
//           margin: EdgeInsets.symmetric(vertical: 10),
//           height: 200,
//           color: seenMap[index]==false? Colors.red: Colors.blue,
//           duration: Duration(milliseconds: 1),
//         )
//       ),
//     )
//       ),
//     );
//   }
// }

// class ListContainer extends StatefulWidget {
//   const ListContainer({
//     Key? key,
//     required this.ui,
//   }) : super(key: key);
//   final UIProvider ui;

//   @override
//   State<ListContainer> createState() => _ListContainerState();
// }

// class _ListContainerState extends State<ListContainer> {
//   @override
//   Widget build(BuildContext context) {
//     Map<int,bool> seenMap = <int,bool>{
//       0:true,
//       1:false,
//       2:false,
//       3:false,
//       4:false,
//     };
//     return ListView.builder(
//       itemCount: 5,
//       itemBuilder: (context, index) => GestureDetector(
//         onTap: () {
//           seenMap[index]=true;
//           setState(() {
//             print('$index: ${seenMap[index]}');
//           });
//       },
//         child: AnimatedContainer(
//           margin: EdgeInsets.symmetric(vertical: 10),
//           height: 200,
//           color: seenMap[index]==false? Colors.red: Colors.blue,
//           duration: Duration(milliseconds: 1),
//         )
//       ),
//     );
//   }
// }

// class OnlyContainer extends StatelessWidget {
//   const OnlyContainer({
//     Key? key,
//     required this.ui,
//   }) : super(key: key);

//   final UIProvider ui;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         ui.visto=!ui.visto;
//       },
//       child: !ui.visto?
//       Container(
//         height: 200,
//         color: Colors.red,
//       )
//       :Container(
//         height: 200,
//         color: Colors.blue,
//       ),
//     );
//   }
// }

import 'package:change_color/notification_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: NotificationScreen()
    );
  }
}