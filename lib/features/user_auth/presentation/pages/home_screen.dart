import 'package:flutter/material.dart';
import 'package:flutter_firebase/features/user_auth/presentation/pages/categorias_screen.dart';
import 'package:flutter_firebase/features/user_auth/presentation/pages/novel_description.dart';
import 'package:flutter_firebase/features/user_auth/presentation/pages/user_info.dart';

class HomeScreen extends StatelessWidget {
  static const String screenName = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const WidgetDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('UNovels'),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 28),
      ),
      body: const NovelList(),
      backgroundColor: Colors.white,
    );
  }

  void navigateToHome(BuildContext context) {}
}

class WidgetDrawer extends StatelessWidget {
  const WidgetDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
            color: Colors.black,
            child: Column(
              children: [
                Container(
                  width: 150,
                  height: 200,
                  margin: const EdgeInsets.only(bottom: 10, top: 50),
                  child: Image.asset('resource/images/logoUnovels.png'),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  width: double.infinity,
                  child: ElevatedButton.icon(
                      icon: const Icon(
                        Icons.people,
                        size: 50,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const UserInfo(),
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                          primary: Colors.black, backgroundColor: Colors.white),
                      label: const Text("CUENTA")),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  width: double.infinity,
                  child: ElevatedButton.icon(
                      icon: const Icon(
                        Icons.menu_book,
                        size: 50,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const Categorias(),
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                          primary: Colors.black, backgroundColor: Colors.white),
                      label: const Text("CATEGORIAS")),
                ),
              ],
            )));
  }
}

class NovelList extends StatelessWidget {
  const NovelList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NovelCard(
          imageUrl:
              'https://m.media-amazon.com/images/I/71ZDOWL7SnL._AC_SY879_.jpg',
          descripcion: '',
        ),
        NovelCard(
          imageUrl:
              'https://m.media-amazon.com/images/I/71ZDOWL7SnL._AC_SY879_.jpg',
          descripcion: '',
        ),
        NovelCard(
          imageUrl:
              'https://m.media-amazon.com/images/I/71ZDOWL7SnL._AC_SY879_.jpg',
          descripcion: '',
        ),
        NovelCard(
          imageUrl:
              'https://m.media-amazon.com/images/I/71ZDOWL7SnL._AC_SY879_.jpg',
          descripcion: '',
        ),
        NovelCard(
          imageUrl:
              'https://m.media-amazon.com/images/I/71ZDOWL7SnL._AC_SY879_.jpg',
          descripcion: '',
        ),
      ],
    );
  }
}

class NovelCard extends StatelessWidget {
  final String imageUrl;
  final String descripcion;

  const NovelCard(
      {super.key, required this.imageUrl, required this.descripcion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.network(
              imageUrl,
              height: 250,
              width: 120,
            ),
            const SizedBox(width: 10),
            Column(
              children: [
                Container(
                  child: const Text('Descripcion '),
                  height: 140,
                  width: 335,
                ),
                Container(
                  margin: EdgeInsets.only(left: 250),
                  child: ElevatedButton.icon(
                      icon: const Icon(
                        Icons.arrow_circle_right,
                        size: 25,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const NovelDescription(),
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.black,
                          textStyle: const TextStyle(fontSize: 32)),
                      label: Text('')),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
