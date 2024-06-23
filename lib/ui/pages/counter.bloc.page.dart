import 'package:bloc_app/ui/widgets/main.drawer.widget.dart';
import 'package:flutter/material.dart';

class CounterBlocPage extends StatelessWidget {
  const CounterBlocPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: const MainDrawer(),
      appBar: AppBar(
        title: const Text("Counter Bloc"),
      ),
      body: const Center(
        child: Text("Counter Bloc"),
      ),
    );
  }
}
