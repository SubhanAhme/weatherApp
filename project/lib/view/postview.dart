// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:project/controller/homeController.dart';

// class PostView extends StatefulWidget {
//   const PostView({super.key});

//   @override
//   State<PostView> createState() => _PostViewState();
// }

// class _PostViewState extends State<PostView> {
//   TextEditingController title = TextEditingController();
//     TextEditingController body = TextEditingController();
     
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             children: [
            
//                TextField(
//                 controller: title,
//                 decoration: InputDecoration(
//                   hintText: "title",
//                 ),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               TextField(
//                 controller: body,
//                 decoration: InputDecoration(
//                   hintText: "body",
//                 ),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               ElevatedButton(onPressed: () {
//                 addPost(
//             {
//               "title":title.text,
//               "body":body.text,
//               "userId":1
        
//             }
        
//                 );
//               }, child: Text("Add Post"))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
