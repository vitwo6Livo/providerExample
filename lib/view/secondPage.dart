import 'package:example_provider/controller/additionController.dart';
import 'package:example_provider/controller/counterController.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final value = Provider.of<AdditionController>(context).add;

    // TODO: implement build
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Value From Page: $value'),
          ),
          const SizedBox(),
          ElevatedButton(
              onPressed: () =>
                  Provider.of<CounterController>(context, listen: false)
                      .increase(),
              child: const Text('+'))
        ],
      ),
    );
  }
}
