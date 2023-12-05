// import 'package:flutter/material.dart';

// class ScrollableScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Scrollable Screen'),
//       ),
//       body: CustomScrollView(
//         slivers: [
//           SliverToBoxAdapter(
//             child: SizedBox(
//               height: 200, // Set the desired height of the horizontal ListView
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 10, // Replace with your actual item count
//                 itemBuilder: (context, index) {
//                   return Container(
//                     width: 150, // Set the desired width of each item
//                     color: Colors.blue,
//                     margin: EdgeInsets.all(8),
//                   );
//                 },
//               ),
//             ),
//           ),
//           SliverList(

//             delegate: SliverChildBuilderDelegate(

//               (context, index) {
//                 return ListTile(
//                   title: Text('Item $index'),
//                 );
//               },
//               childCount: 50, // Replace with your actual item count
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
