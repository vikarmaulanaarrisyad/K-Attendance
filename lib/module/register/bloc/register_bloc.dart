
import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/register_event.dart';
import '../state/register_state.dart';
import 'package:absensi_rfid_flutter/bloc_util.dart';



class RegisterBloc extends Bloc<RegisterEvent, RegisterState> implements IBlocBase {
  RegisterBloc() : super(RegisterState()) {
    on<RegisterIncrementEvent>((event, emit) {
      
        state.counter++;
        emit(state.copyWith());
      
    });
  }

  @override
  void initState() {
    //initState event
  }

  @override
  void dispose() {
    //dispose event
  }

  @override
  void ready() {
    //ready event
  }
}
    