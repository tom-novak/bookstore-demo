import 'package:bookstore_demo/main.dart';
import 'package:bookstore_demo/src/application/application.dart';
import 'package:bookstore_demo/src/presentation/presentation.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BookStore demo'),
      ),
      body: BookList(cubit: getIt.get<BookListCubit>(),),
    );
  }
}
