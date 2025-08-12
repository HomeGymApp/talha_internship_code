import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rest_api/modals/PosterModel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<PosterModel> postList = [];

  Future<List<PosterModel>> getPostApi() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    );

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body.toString());
      postList = data.map((item) => PosterModel.fromJson(item)).toList();
      return postList;
    } else {
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('API Integration Example'),
      ),
      body: FutureBuilder<List<PosterModel>>(
        future: getPostApi(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemCount: postList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(postList[index].title),
                  subtitle: Text(postList[index].body),
                  leading: Text(postList[index].id.toString()),
                );
              },
            );
          }
        },
      ),
    );
  }
}
