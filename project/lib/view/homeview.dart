import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project/view/detail.dart';

import '../controller/homeController.dart';
import '../model/userModel.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
        ),
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: const Icon(Icons.notifications_outlined),
        //     color: Colors.black87,
        //   ),
        //   IconButton(
        //     onPressed: () {
        //       Navigator.push(
        //         context,
        //         MaterialPageRoute(
        //           builder: (context) => AddToCart(),
        //         ),
        //       );
        //     },
        //     icon: const Icon(Icons.local_grocery_store),
        //     color: Colors.black87,
        //   ),
        //   SizedBox(
        //     width: 1,
        //   )
        // ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: SizedBox(
                      width: 350,
                      height: 60,
                      child: TextField(
                        controller: search,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            hintText: 'Search Here',
                            prefixIcon: Icon(Icons.search),
                            iconColor: Colors.grey),
                      ),
                    )),
              ),
              FutureBuilder(
                  future: getData(search.text),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                          itemCount: snapshot.data.length,
                          itemBuilder: (context, index) {
                            var myuser = snapshot.data[index] as data;
                            return Container(
                              
                            );
                          });
                    } else {
                      return const CircularProgressIndicator();
                    }
                  }),
            ],
          ),
        ),
      ),
      // floatingActionButton: CircleAvatar(
      //   child: IconButton(
      //       onPressed: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(
      //             builder: (context) => AddProductView(),
      //           ),
      //         );
      //       },
      //       icon: const Icon(
      //         Icons.add,
      //         color: Colors.black87,
      //       )),
      // ),
    );
  }
}




//  return Scaffold(
//       body: FutureBuilder(
//           future: getData(search.text),
//           builder: (context, AsyncSnapshot snapshot) {
//             if (snapshot.hasData) {
              // return ListView.builder(
              //     itemCount: snapshot.data.length,
              //     itemBuilder: (context, index) {
              //       var myuser = snapshot.data[index] as data;
//                     return Container(
//                       child: Column(
//                        children: [
//                            Center(
//                 child: Padding(
//                     padding: EdgeInsets.symmetric(
//                       horizontal: 8,
//                     ),
//                     child: SizedBox(
//                       width: 350,
//                       height: 60,
//                       child: TextField(
//                            controller: search,
//                         decoration: InputDecoration(
                           
//                             filled: true,
//                             hintText: 'Search Here For City',
//                             prefixIcon: Icon(Icons.search),
//                             iconColor: Colors.grey),
//                       ),
//                     )),
//               ),
//                        ],

//                       ),
//                     );
//                   });
//             } else {
//               return CircularProgressIndicator();
//             }
//           }),
//     );