import 'package:bloc_app/ui/widgets/main.drawer.widget.dart';
import 'package:flutter/material.dart';

class GitUsersPage extends StatelessWidget {
  const GitUsersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: const MainDrawer(),
      appBar: AppBar(
        title: const Text("Git Users"),
      ),
      body: const Center(
        child: Text("Git Users"),
      ),
    );
  }
}
