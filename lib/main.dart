import 'package:estudos_bloc/presenter/Counter.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final bo = CounterBo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Olá BLoC"),
      ),
      body: Center(
        child: bo.counterPresenter(context),
      ),
      floatingActionButton: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          bo.botaoMais(context),
          SizedBox(
            width: 10.0,
          ),
          bo.botaoMenos(context)
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    bo.dispose();
  }
  
}


