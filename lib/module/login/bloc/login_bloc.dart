
import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/login_event.dart';
import '../state/login_state.dart';
import 'package:absensi_rfid_flutter/bloc_util.dart';



class LoginBloc extends Bloc<LoginEvent, LoginState> implements IBlocBase {
  LoginBloc() : super(LoginState()) {
    on<LoginIncrementEvent>((event, emit) {
      
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
    