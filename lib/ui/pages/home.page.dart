import 'package:bloc_app/ui/widgets/main.drawer.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: const MainDrawer(),
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: const Center(
        child: Text("Home Page"),
      ),
    );
  }
}
