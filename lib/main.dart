import 'package:example_provider/controller/additionController.dart';
import 'package:example_provider/controller/counterController.dart';
import 'package:example_provider/view/additionUi.dart';
import 'package:example_provider/view/secondPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(ExpampleProvider());

class ExpampleProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AdditionController()),
        ChangeNotifierProvider(create: (context) => CounterController())
      ],
      child: MaterialApp(
        theme: ThemeData(primaryColor: Colors.red),
        home: Addition(),
        routes: {'secondPage': (context) => SecondPage()},
      ),
    );
  }
}
