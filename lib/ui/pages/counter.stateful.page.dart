import 'package:bloc_app/ui/widgets/main.drawer.widget.dart';
import 'package:flutter/material.dart';

class CounterStatefulPage extends StatefulWidget {
  const CounterStatefulPage({Key? key}) : super(key: key);

  @override
  State<CounterStatefulPage> createState() => _CounterStatefulPageState();
}

class _CounterStatefulPageState extends State<CounterStatefulPage> {
  int counter = 0;
  String errorMessage = "";
  @override
  Widget build(BuildContext context) {
    print("Building Widget Tree");
    int counter = 0;
    return Scaffold(
      //drawer: const MainDrawer(),
      appBar: AppBar(
        title: const Text("Counter Stateful"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("Counter Value => $counter"),
          (errorMessage != '') ? Text("$errorMessage") : Text("")
        ]),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              setState(() {
                if (counter > 0) {
                  --counter;
                } else {
                  errorMessage = "Counter less than 0";
                }
              });
            },
            child: const Icon(Icons.remove),
          ),
          const SizedBox(
            width: 8,
          ),
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              setState(() {
                if (counter < 10) {
                  ++counter;
                  errorMessage = "";
                } else {
                  errorMessage = "Counter more than 10";
                }
              });
            },
            child: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
