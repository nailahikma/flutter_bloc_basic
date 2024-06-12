import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'new_counter_event.dart';
part 'new_counter_state.dart';

class NewCounterBloc extends Bloc<NewCounterEvent, NewCounterState> {
  int value = 0;

  NewCounterBloc() : super(NewCounterSuccess(0)) {
    on<Increment>((event, emit) async {
      emit(NewCounterLoading());
      // Delay
      // await Future.delayed(const Duration(seconds: 3));
      value++;
      emit(NewCounterSuccess(value));
    });

    on<Decrement>((event, emit) {
      emit(NewCounterLoading());
      value--;
      if(value < 0){
        emit(NewCounterFailure('Value cannot be negative'));
      } else {
        emit(NewCounterSuccess(value));
      }
      
    });
  }
}
