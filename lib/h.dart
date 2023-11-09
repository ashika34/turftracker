// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.green,
//       ),
   
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.green,
//               ),
//               child: Row(
//                 children: [
//                   CircleAvatar(
//                     radius: 45,
//                     backgroundColor: Colors.white,
//                     child: Icon(
//                       Icons.person,
//                       color: Colors.green,
//                       size: 41,
//                     ),
//                   ),
//                   SizedBox(width: 16), 
//                   Align(
//                     alignment: Alignment.centerLeft,
//                     child: Text(
//                       'TurfTracker',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 23,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             ListTile(
//               title: Text('My Bookings'),
//               onTap: () {
                
//               },
//             ),
//             ListTile(
//               title: Text('Help & FAQs'),
//               onTap: () {
               
//               },
//             ),
//             ListTile(
//               title: Text('Blogs'),
           
//             ),
//             ListTile(
//               title: Text('Privacy Policies'),
            
//             ),
//             ListTile(
//               title: Text('Logout'),
              
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }