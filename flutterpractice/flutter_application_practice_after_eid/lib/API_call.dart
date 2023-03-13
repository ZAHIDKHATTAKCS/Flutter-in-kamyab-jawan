import 'dart:convert';
import 'dart:html';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_practice_after_eid/Model/post.dart';
import 'package:http/http.dart' as http;
import 'package:lottie/lottie.dart';
import 'Model/Comments.dart';

class ApiCall extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  ApiCall({Key? key}) : super(key: key);

  @override
  State<ApiCall> createState() => _ApiCallState();
}

class _ApiCallState extends State<ApiCall> {
  List<Comments> postList = [];

  Future<List<Comments>> getPostApi() async {
    final resposne = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));
    var data = jsonDecode(resposne.body.toString());
    if (resposne.statusCode == 200) {
      // postList.clear();
      for (var i in data) {
        postList.add(Comments.fromJson(i));
      }
      return postList;
    } else {
      return postList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: const Text('API Call Comments'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getPostApi(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  // return Image.asset('assets/images/3.png');
                  return Lottie.network(
                      'https://lottiefiles.com/117003-circle-shape-morphing-animation');
                  // return const Text('Loading...');
                } else {
                  return ListView.builder(
                    itemCount: postList.length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Column(
                            children: const [Text('zahidkhattak')],
                          ),
                          Column(
                            children: const [Text('zahidkhattak2')],
                          )
                        ],
                      );
                      // return Card(
                      //   child: Padding(
                      //     padding: const EdgeInsets.all(8.0),
                      //     child: Column(
                      //       mainAxisAlignment: MainAxisAlignment.start,
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       children: [
                      //         const Text(
                      //           'PostId',
                      //           style: TextStyle(
                      //               fontSize: 15,
                      //               fontWeight: FontWeight.bold),
                      //         ),
                      //         const SizedBox(
                      //           height: 3,
                      //         ),
                      //         Text(postList[index].postId.toString()),
                      //         const Text(
                      //           'Name',
                      //           style: TextStyle(
                      //               fontSize: 15,
                      //               fontWeight: FontWeight.bold),
                      //         ),
                      //         const SizedBox(
                      //           height: 3,
                      //         ),
                      //         Text(postList[index].name.toString()),
                      //         const SizedBox(
                      //           height: 5,
                      //         ),
                      //         const Text(
                      //           'Comment',
                      //           style: TextStyle(
                      //               fontSize: 15,
                      //               fontWeight: FontWeight.bold),
                      //         ),
                      //         const SizedBox(
                      //           height: 3,
                      //         ),
                      //         Text(
                      //           postList[index].body.toString(),
                      //           style: const TextStyle(
                      //               fontSize: 15,
                      //               fontWeight: FontWeight.bold),
                      //         )
                      //       ],
                      //     ),
                      //   ),
                      // );
                    },
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
