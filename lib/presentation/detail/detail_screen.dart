import 'package:flutter/material.dart';
import 'package:photo_search_app/data/model/photo.dart';

class DetailScreen extends StatelessWidget {
  final Photo photo;

  const DetailScreen({Key? key, required this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("찜 화면"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: SizedBox(
                width: 250,
                height: 300,
                child: Image.network(
                  photo.previewURL,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          ElevatedButton(onPressed: () {}, child: const Text("찜하기"))
        ],
      ),
    );
  }
}
