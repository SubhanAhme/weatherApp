// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

// import '../model/userModel.dart';

// class DetailView extends StatelessWidget {
// user? data;
//   DetailView({super.key, this.data});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 10,),
//             Text("${data?.id}"),
//             Text("${data?.name}"),
//             Text("${data?.username}"),
//             Text("${data?.email}"),
//             Row(
//               children: [
//                  Text("${data?.address?.street}"),
//                   Text("${data?.address?.suite}"),
//                    Text("${data?.address?.city}"),
//               ],
//             ),
//             Text("${data?.phone}"),
//             ]
//           ),
//         ),
//       ),
//     );
//   }
// }
