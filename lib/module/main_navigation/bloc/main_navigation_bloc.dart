
import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/main_navigation_event.dart';
import '../state/main_navigation_state.dart';
import 'package:absensi_rfid_flutter/bloc_util.dart';



class MainNavigationBloc extends Bloc<MainNavigationEvent, MainNavigationState> implements IBlocBase {
  MainNavigationBloc() : super(MainNavigationState()) {
    on<MainNavigationIncrementEvent>((event, emit) {
      
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
    