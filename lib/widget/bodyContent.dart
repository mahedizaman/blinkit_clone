import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BodyContentPage extends StatefulWidget {
  const BodyContentPage({super.key});

  @override
  State<BodyContentPage> createState() => _BodyContentPageState();
}

class _BodyContentPageState extends State<BodyContentPage> {
  List photos = [];
  Future<void> getPhotos() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/photos'),
    );
    if (response.statusCode == 200) {
      photos = jsonDecode(response.body);
      setState(() {});
      print(response.statusCode);
      print(photos.length);
    }
  }

  @override
  void initState() {
    super.initState();
    getPhotos();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: ExpansionTile(
            title: Text(photos[index]['title']),
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: Image.network(
                  photos[index]['thumbnailUrl'],
                  width: 150,
                  height: 150,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
