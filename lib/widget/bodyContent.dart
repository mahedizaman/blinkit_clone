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
        return ExpansionTile(
          title: Text(photos[index]['title']),
          children: [Text(photos[index]['thumbnailUrl'])],
        );
      },
    );
  }
}
