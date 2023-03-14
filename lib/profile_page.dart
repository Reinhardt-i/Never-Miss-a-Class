// return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         automaticallyImplyLeading: false,
//         backgroundColor: Colors.white,
//         flexibleSpace: SafeArea(
//           child: Container(
//             padding: EdgeInsets.only(right: 16),
//             child: Row(
//               children: <Widget>[
//                 IconButton(
//                   onPressed: (){
//                     Navigator.pop(context);
//                   },
//                   icon: Icon(Icons.arrow_back,color: Colors.black,),
//                 ),
//                 SizedBox(width: 2,),
//                 CircleAvatar(
//                   backgroundImage: NetworkImage("<https://randomuser.me/api/portraits/men/5.jpg>"),
//                   maxRadius: 20,
//                 ),
//                 SizedBox(width: 12,),
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Text("Kriss Benwat",style: TextStyle( fontSize: 16 ,fontWeight: FontWeight.w600),),
//                       SizedBox(height: 6,),
//                       Text("Online",style: TextStyle(color: Colors.grey.shade600, fontSize: 13),),
//                     ],
//                   ),
//                 ),
//                 Icon(Icons.settings,color: Colors.black54,),
//               ],
//             ),
//           ),
//         ),
//       ),
//       body: Container()
//     );