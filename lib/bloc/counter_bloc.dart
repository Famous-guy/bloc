import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrement>((event, emit) {
      if (kDebugMode) {
        print('state before $state');
      }
      emit(state + 1);
      if (kDebugMode) {
        print('state after $state');
      }
    });
    on<CounterDecrement>((event, emit) {
      if (state > 0) {
        if (kDebugMode) {
          print('state before $state');\
        }
        emit(
          state - 1,
        );
        if (kDebugMode) {
          print('state after $state');
        }
      } else {
        return;
      }
    });
  }
}
