import 'package:example_provider/controller/counterController.dart';
import 'package:example_provider/view/secondPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controller/additionController.dart';

class Addition extends StatelessWidget {
  TextEditingController firstValue = TextEditingController();
  TextEditingController secondValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final value = Provider.of<AdditionController>(context).add;
    final count = Provider.of<CounterController>(context).count;

    // TODO: implement build
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            controller: firstValue,
            decoration: InputDecoration(hintText: "Enter First value"),
          ),
          TextField(
            controller: secondValue,
            decoration: InputDecoration(
              hintText: "Enter Second Vlue",
            ),
          ),
          ElevatedButton(
              onPressed: () =>
                  Provider.of<AdditionController>(context, listen: false).sum(
                      int.parse(firstValue.text), int.parse(secondValue.text)),
              child: const Text("Add")),
          const SizedBox(),
          Text('Sum: $value'),
          const SizedBox(),
          ElevatedButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondPage())),
              child: const Text("Next Page")),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () =>
                      Provider.of<CounterController>(context, listen: false)
                          .decrease(),
                  child: const Text('-')),
              Text(count.toString()),
              ElevatedButton(
                  onPressed: () =>
                      Provider.of<CounterController>(context, listen: false)
                          .increase(),
                  child: const Text('+'))
            ],
          )
        ],
      ),
    );
  }
}
