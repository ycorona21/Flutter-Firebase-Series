import 'package:flutter/material.dart';
import 'novel_controler.dart';

class NovelScreen extends StatelessWidget {
  final NovelController controller;

  const NovelScreen(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.currentNovel.title),
      ),
      body: ListView.builder(
        itemCount: controller.currentNovel.chapters.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(controller.currentNovel.chapters[index].title),
            onTap: () {
              controller.loadChapter(index.toString());
            },
          );
        },
      ),
    );
  }
}
