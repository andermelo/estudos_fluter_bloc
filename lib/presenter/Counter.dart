import 'package:estudos_bloc/bloc/CounterBloc.dart';
import 'package:estudos_bloc/events/CounterEvent.dart';
import 'package:flutter/material.dart';

class CounterBo {
  dispose() {
    _bloc.dispose();
  }

  final _bloc = CounterBloc();

  Widget counterPresenter(BuildContext context) {
    // _bloc.counterEventSink.add(DecrementEvent());
    return StreamBuilder(
      stream: _bloc.counter,
      initialData: 0,
      builder: (context, AsyncSnapshot<int> snapshot) {
        return Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("estudos bloc, aperte os botoes para testar!"),
              Text("${snapshot.data}")
            ],
          ),
        );
      },
    );
  }

  Widget botaoMais(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        _bloc.counterEventSink.add(IncrementEvent());
      },
      tooltip: 'Increment',
      child: Icon(Icons.add),
    );
  }

  Widget botaoMenos(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        _bloc.counterEventSink.add(DecrementEvent());
      },
      tooltip: 'Decrement',
      child: Icon(Icons.remove),
    );
  }

}
