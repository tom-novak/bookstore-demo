import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IT Books'),
      ),
      body: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Text('ahoj'),
          ),
        ],
      ),
    );
  }
}
