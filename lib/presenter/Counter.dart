import 'package:estudos_bloc/bloc/CounterBloc.dart';
import 'package:estudos_bloc/events/CounterEvent.dart';
import 'package:flutter/material.dart';

class CounterBo {
  dispose() {
    _bloc.dispose();
  }

  final _bloc = CounterBloc();

}
